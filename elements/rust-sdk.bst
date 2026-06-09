# SPDX-FileCopyrightText: 2026 Aleix Pol Gonzalez <aleix.pol@codethink.co.uk>
# SPDX-License-Identifier: MIT

kind: compose
description: Helper so that Rust + dependencies do not end up in org.kde.Platform

build-depends:
- freedesktop-sdk.bst:components/rust.bst

public:
  bst:
    split-rules:
      cleanup:
        (>):
        - '**/*'
