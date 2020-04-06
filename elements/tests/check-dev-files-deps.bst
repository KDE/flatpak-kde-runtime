kind: manual

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  install-commands:
  - |
    install -D -t "%{install-root}%{bindir}" scan-for-dev-files.sh

sources:
- kind: local
  path: utils/scan-for-dev-files.sh

