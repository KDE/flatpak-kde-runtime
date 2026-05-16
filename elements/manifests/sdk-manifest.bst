# SPDX-FileCopyrightText: 2025 Aleix Pol Gonzalez <aleix.pol@codethink.co.uk>
# SPDX-License-Identifier: MIT

kind: collect_manifest

depends:
  - filename: sdk.bst
    type: build

config:
  path: "/usr/manifest.json"

