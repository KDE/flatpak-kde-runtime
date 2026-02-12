# SPDX-FileCopyrightText: 2025 Aleix Pol Gonzalez <aleix.pol@codethink.co.uk>
# SPDX-License-Identifier: MIT

kind: collect_integration
description: Combines integration commands of all components of the SDK into a single
  shell script

config:
  script-path: '%{libexecdir}/freedesktop-post.sh'

build-depends:
- flatpak-images/sdk.bst
