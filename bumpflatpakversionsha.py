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

def checkGitNextTag(source, replace):
    if source['type'] == 'git' and 'branch' in source:
        repo = None
        directory = "./check/" + os.path.basename(urlparse(source['url']).path)
        if os.path.isdir(directory):
            repo = git.Repo(directory)
            repo.remotes[0].pull()
        else:
            repo = git.Repo()
            repo.clone_from(source['url'], directory)
        repo.remotes[0].fetch("--tags")

        branch = source['branch']
        if branch in repo.tags:
            usedCommit = repo.commit(repo.tags[branch].object)
            for tag in repo.tags:
                tagCommit = repo.commit(tag.object)
                if 'rc' in tag.name or 'beta' in tag.name or 'alpha' in tag.name:
                    continue

                if usedCommit.committed_date < tagCommit.committed_date:
                    print("newer tag", source['url'], tag)
        elif branch in repo.branches:
            usedCommit = repo.commit(repo.branches[branch].object)
            for branch in repo.branches:
                branchCommit = repo.commit(branch.object)
                if usedCommit.committed_date < branchCommit.committed_date:
                    print("newer branch", tag)
        else:
            print("wtf", source['url'] , branch)

def checkGitHubRepository(source, replace):
    if source['type'] == 'archive' and source['url'].startswith("https://github.com/"):
        url = source['url']
        m = re.search('https://github.com/(.+)/(.+)/releases/download/(.*)/.+', url)
        if not m:
            m = re.search('https://github.com/(.+)/(.+)/archive/(.*).tar.gz', url)

        if m:
            checkGitNextTag({'type': 'git', 'url': 'https://github.com/' + m.group(1) + '/' + m.group(2) + '.git', 'branch': m.group(3) }, {})
        else:
            print("could not recognize", url)


def processModule(module):
    replace = {}
    if 'sources' in module:
        for source in module['sources']:
            checkGitHubRepository(source, replace)
            checkArchiveSha256(source, replace)
            checkGitNextTag(source, replace)

    if 'modules' in module and isinstance(module['modules'], dict):
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
