# SPDX-FileCopyrightText: 2025 Aleix Pol Gonzalez <aleix.pol@codethink.co.uk>
# SPDX-License-Identifier: MIT

kind: compose
description: |
  Composes dependencies into the image to be exported
  This is the point where devel split rules are implemented,
  and we define docs and local split rules.


config:
  exclude:
  - cleanup
  - extra
  - vm-only
  - static-blocklist



public:
  bst:
    split-rules:
      docs:
      - '%{datadir}/runtime/docs/**'
      locale:
      - '%{datadir}/runtime/locale/**'

build-depends:
- org.kde.Sdk.bst
- manifests/sdk-manifest.bst
- freedesktop-sdk.bst:components/nsswitch-config.bst
- freedesktop-sdk.bst:components/python3-sitecustomize.bst
- freedesktop-sdk.bst:multiarch/multiarch-sdk.bst
- freedesktop-sdk.bst:integration/split-locales.bst
- freedesktop-sdk.bst:integration/split-docs.bst
- freedesktop-sdk.bst:integration/debug-app-link.bst
- freedesktop-sdk.bst:integration/flatpak-builder-configuration.bst
