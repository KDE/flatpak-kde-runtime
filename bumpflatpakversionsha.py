#
# <one line to give the program's name and a brief idea of what it does.>
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
    sha256 = hashlib.sha256()

    print("getting...", url)
    response = requests.get(url, stream=True)

    for data in response.iter_content():
        sha256.update(data)
    return sha256.hexdigest()

def processModule(module):
    for source in module['sources']:
        if source['type'] == 'archive':
            sha = calculate_sha256(source['url'])
            if sha != source['sha256']:
                print("new sha", source, sha)

if __name__ == "__main__":
    with open("org.kde.Sdk.json", 'r') as sdkfile:
        value = json.load(sdkfile)

        pool = multiprocessing.Pool(14)
        pool.map(processModule, value['modules'])
