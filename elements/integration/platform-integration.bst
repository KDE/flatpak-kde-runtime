# SPDX-FileCopyrightText: 2025 Aleix Pol Gonzalez <aleix.pol@codethink.co.uk>
# SPDX-License-Identifier: MIT

kind: collect_integration
description: Combines the integration commands of all components of the runtime into
  a single shell script

config:
  script-path: '%{libexecdir}/freedesktop-post.sh'

build-depends:
- sdk.bst
