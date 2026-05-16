kind: autotools

sources:
- kind: git_repo
  url: github:dmtx/libdmtx.git
  track: v0.7.*
  ref: v0.7.8-0-g500d7af6106713610a0f8b2d96aefa81912b96bc

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
