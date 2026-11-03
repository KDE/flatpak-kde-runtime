# SPDX-FileCopyrightText: 2025 Aleix Pol Gonzalez <aleix.pol@codethink.co.uk>
# SPDX-License-Identifier: MIT

kind: junction
sources:
- kind: git_repo
  # https://github.com/apache/buildstream-plugins/pull/118
  url: github:aleixpol/buildstream-plugins.git
  track: aleixpol/git-relative-submodules
  ref: b7bedebb982f621a3e61942fedfa05a450e744de
  ref-format: sha1
