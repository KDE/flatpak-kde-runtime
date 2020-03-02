kind: autotools
description: libdmtx (needed for prison)

runtime-depends:
- qt5/qtbase.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

sources:
- kind: tar
  url: https://github.com/dmtx/libdmtx/archive/v0.7.5.tar.gz
  ref: be0c5275695a732a5f434ded1fcc232aa63b1a6015c00044fe87f3a689b75f2e
