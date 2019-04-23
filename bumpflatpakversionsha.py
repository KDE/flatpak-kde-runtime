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

def calculate_sha256(url):
    urlsha = url + ".sha256"
    r = requests.get(urlsha, stream=False)

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

def processModule(module):
    replace = {}
    for source in module['sources']:
        if source['type'] == 'archive':
            sha = calculate_sha256(source['url'])
            if sha != source['sha256']:
                print("new sha", source, sha)
                replace[source['sha256']] = sha
        break
    return replace

if __name__ == "__main__":
    content = ""
    with open("org.kde.Sdk.json", 'r') as sdkfile:
        content = sdkfile.read()

    value = json.loads(content)

    pool = multiprocessing.Pool(6)
    replacements = pool.map(processModule, value['modules'])

    for repl in replacements:
        for (a, b) in repl.items():
            content = content.replace(a, b, 1)

    with open("org.kde.Sdk.json", 'w') as sdkfile:
        sdkfile.write(content)
