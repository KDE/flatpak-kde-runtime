kind: compose
description: |
  Composes dependencies into the image to be exported.
  This is the point where devel is split out of the runtime,
  and we define the domains for docs and locale. We also include
  a manifest.json containing version/source information.

config:
  exclude:
  - extra
  - vm-only
  - static-blocklist
  - static-allowlist
  - devel

public:
  bst:
    split-rules:
      docs:
      - '%{datadir}/runtime/docs/**'
      locale:
      - '%{datadir}/runtime/locale/**'

build-depends:
- platform.bst
- manifests/platform-manifest.bst
- freedesktop-sdk.bst:multiarch/multiarch-platform.bst
- freedesktop-sdk.bst:integration/split-locales.bst
- freedesktop-sdk.bst:integration/split-docs.bst

