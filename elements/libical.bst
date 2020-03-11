kind: cmake
description: libIcal

runtime-depends:
- qt5/qtbase.bst

build-depends:
- kf5/extra-cmake-modules.bst
- freedesktop-sdk.bst:components/perl.bst

variables:
  cmake-local: >
    -DICAL_BUILD_DOCS=OFF
    -DICAL_GLIB=OFF
    -DWITH_CXX_BINDINGS=OFF
    -DSHARED_ONLY=ON

sources:
- kind: tar
  url: https://github.com/libical/libical/releases/download/v3.0.4/libical-3.0.4.tar.gz
  ref: 72b216e10233c3f60cb06062facf41f3b0f70615e5a60b47f9853341a0d5d145
