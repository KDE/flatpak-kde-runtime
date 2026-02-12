# SPDX-FileCopyrightText: 2025 Aleix Pol Gonzalez <aleix.pol@codethink.co.uk>
# SPDX-License-Identifier: MIT

kind: junction
sources:
- kind: git_repo
  url: github:apache/buildstream-plugins.git
  track: "*.*.*"
  exclude:
  - "*dev*"
  ref: 2.5.0-0-g79649529cffb695d0d22195ed9a4910c80ca6907
