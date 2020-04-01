kind: flatpak_repo
description: Generates a flatpak repository with all flatpak image elements

build-depends:
- freedesktop-sdk.bst:public-stacks/flatpak-publish-tools.bst
- filename: flatpak-release-deps.bst

config:
  arch: '%{arch}' # This is the interface for flatpak-repo plugin 
  branch: '%{kde-branch}'
  repo-mode: bare-user-only
  environment:
  - public-stacks/flatpak-publish-tools.bst
  copy-refs: []
