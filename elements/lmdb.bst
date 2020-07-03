kind: make
description: lmdb (required for baloo)

runtime-depends:
- qt5/qtbase.bst

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/which.bst
- freedesktop-sdk.bst:components/python3.bst

variables:
  command-subdir: libraries/liblmdb

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/liblmdb.so'

config:
  build-commands:
  - make PREFIX="%{prefix}"

sources:
- kind: git
  url: https://git.openldap.org/openldap/openldap.git
  track: master
  ref: a3bee867005e6f4f19f406c1f430e81ca12b9707
