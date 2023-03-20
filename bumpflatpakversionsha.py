#
# Copyright 2018  Aleix Pol Gonzalez <aleixpol@kde.org>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation; either version 2 of
# the License or (at your option) version 3 or any later version
# accepted by the membership of KDE e.V. (or its successor approved
# by the membership of KDE e.V.), which shall act as a proxy
# defined in Section 14 of version 3 of the license.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

import json
import hashlib
import requests
import multiprocessing
import sys
import os
import git
import re
from urllib.parse import urlparse


def calculate_sha256(url):
    urlsha = url + ".sha256"
    try:
        r = requests.get(urlsha, stream=False)
    except requests.exceptions.InvalidSchema:
        print("cannot process", url)
        return None

    if r.status_code == requests.codes.ok:
        print("using", urlsha)
        resp = r.text
        idxEnd = resp.find(' ')
        sha = resp[:idxEnd]
        return sha
    else:
        print("no sha256 file", urlsha)

    print("getting...", url)
    sha256 = hashlib.sha256()
    response = requests.get(url, stream=True)

    for data in response.iter_content():
        sha256.update(data)
    return sha256.hexdigest()


def checkArchiveSha256(source, replace):
    if source['type'] == 'archive':
        sha = calculate_sha256(source['url'])
        if sha and sha != source['sha256']:
            print("new sha", source, sha)
            replace[source['sha256']] = sha


def checkRepo(url):
    directory = "./check/" + os.path.basename(urlparse(url).path)
    if os.path.isdir(directory):
        repo = git.Repo(directory)
        repo.remotes[0].pull()
    else:
        repo = git.Repo()
        repo.clone_from(url, directory)
        repo = git.Repo(directory)
    return repo


def checkGitNextTag(source, replace):
    if source['type'] == 'git' and ('branch' in source or 'tag' in source):
        repo = checkRepo(source['url'])
        repo.remotes[0].fetch()

        branch = None
        if 'tag' in source:
            branch = source['tag']
        else:
            branch = source['branch']
            if branch in repo.tags:
                print(branch, 'is a tag for', source['url'])
        found = False

        if branch in repo.tags:
            usedCommit = repo.commit(repo.tags[branch].object)
            found = usedCommit is not None
            for tag in repo.tags:
                tagCommit = repo.commit(tag.object)
                if 'rc' in tag.name or 'beta' in tag.name or 'alpha' in tag.name:
                    continue

                if usedCommit.committed_date < tagCommit.committed_date:
                    print("newer tag", source['url'], tag)
        else:
            usedCommit = None
            for ref in repo.remotes.origin.refs:
                if ref.name == 'origin/' + branch:
                    usedCommit = ref.commit

            found = usedCommit is not None
            if found:
                toignore = ['origin/master', 'origin/HEAD']
                for otherRef in repo.remotes.origin.refs:
                    if otherRef.name in toignore or otherRef.name.startswith('origin/work/'):
                        continue

                    if usedCommit.committed_date < otherRef.commit.committed_date:
                        print("newer branch", source['url'][7:], otherRef.name, "instead of", branch)

        if not found:
            print("wtf", source, repo.tags)


def checkGitHubRepository(source, replace):
    if (source['type'] == 'archive' or source['type'] == 'file' and 'url' in source) and source['url'].startswith("https://github.com/"):
        url = source['url']
        m = re.search('https://github.com/(.+)/(.+)/releases/download/(.*)/.+', url)
        if not m:
            m = re.search('https://github.com/(.+)/(.+)/archive/refs/tags/(.*).tar.gz', url)
        if not m:
            m = re.search('https://github.com/(.+)/(.+)/archive/(.*).tar.gz', url)

        if m:
            checkGitNextTag({'type': 'git', 'url': 'https://github.com/' + m.group(1) + '/' + m.group(2) + '.git', 'tag': m.group(3)}, {})
        else:
            print("could not recognize", url)


def checkPythonHosted(source, replace):
    if 'url' not in source:
        return
    pythonHosted = source['url'].startswith('https://files.pythonhosted')
    pipy = source['url'].startswith('https://pypi.python.org') or source['url'].startswith('https://pypi.io')
    name = None
    if pythonHosted or pipy:
        name = os.path.basename(urlparse(source['url']).path)
        m = re.search('(.+)-[0-9]', name)
        pkgname = m.group(1)
        r = requests.get('https://pypi.org/pypi/' + pkgname + '/json')

        content = json.loads(r.text)
        version = content['info']['version']
        releases = content['releases']

        for asset in releases[version]:
            if asset['digests']['sha256'] != source['sha256'] and os.path.splitext(urlparse(asset['url']).path)[1] == os.path.splitext(source['url'])[1]:
                print("new version of:", pkgname, json.dumps({'type': source['type'], 'url': asset['url'], 'sha256': asset['digests']['sha256']}))



def checkKDEQtPatchCollection(source, replace):
    if source['type'] == 'git' and source['url'].startswith("https://invent.kde.org/qt/qt/"):
        repo = checkRepo(source['url'])
        repo.remotes[0].fetch()
        headFound = None
        branchName = 'origin/kde/5.15'
        for ref in repo.remotes.origin.refs:
            if ref.name == branchName:
                headFound = ref

        if headFound and headFound.commit != source['commit']:
            replace[source['commit']] = headFound.commit.hexsha
        else:
            print("No branch %s for %s" % (branchName, source['url']))


def processModule(module):
    if isinstance(module, str):
        with open(module, 'r') as moduleFile:
            content = moduleFile.read()
        try:
            value = json.loads(content)
        except Exception as err:
            print("failed to parse", x, err)
            return {}
        return processModule(value)

    replace = {}
    if 'sources' in module:
        for source in module['sources']:
            try:
                checkGitHubRepository(source, replace)
                checkArchiveSha256(source, replace)
                checkGitNextTag(source, replace)
                checkPythonHosted(source, replace)
                checkKDEQtPatchCollection(source, replace)
            except Exception as err:
                print("Failed processing", source, err)

    if 'modules' in module and isinstance(module['modules'], list):
        for submodule in module['modules']:
            replace = {**replace, **processModule(submodule)}
    return replace


if __name__ == "__main__":
    content = ""
    for x in sys.argv[1:]:
        with open(x, 'r') as sdkfile:
            content = sdkfile.read()

        try:
            value = json.loads(content)
        except:
            print("failed to parse", x)
            continue

        pool = multiprocessing.Pool(6)
        replacements = pool.map(processModule, value['modules'])

        for repl in replacements:
            for (a, b) in repl.items():
                content = content.replace(a, b, 1)

        with open(x, 'w') as sdkfile:
            sdkfile.write(content)
