kind: compose
description: |
  Composes dependencies into the image to be exported
  This is the point where devel split rules are implemented,
  and we define docs and local split rules.

public:
  bst:
    split-rules:
      docs:
      - '%{datadir}/runtime/docs/**'
      locale:
      - '%{datadir}/runtime/locale/**'

config:
  exclude:
    - extra
    - static-blocklist
    - vm-only

build-depends:
- sdk.bst
- freedesktop-sdk.bst:multiarch/multiarch-sdk.bst
- freedesktop-sdk.bst:integration/split-locales.bst
- freedesktop-sdk.bst:integration/split-docs.bst
- freedesktop-sdk.bst:integration/flatpak-builder-configuration.bst
- freedesktop-sdk.bst:integration/debug-app-link.bst
- freedesktop-sdk.bst:manifests/sdk-manifest.bst
