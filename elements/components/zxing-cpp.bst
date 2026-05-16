kind: cmake

sources:
- kind: git_repo
  url: github:zxing-cpp/zxing-cpp.git
  track: v3.*
  exclude:
  - '*rc*'
  ref: v3.0.2-0-g8dd1cf5c4fd6fb6211bb96713db926ac6f2cf825

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/libpng.bst
- components/karchive.bst
- components/kcoreaddons.bst
- components/ki18n.bst
- components/qtmultimedia.bst
- components/qtdeclarative.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_DEPENDENCIES=LOCAL
    -DBUILD_SHARED_LIBS=ON
    -DBUILD_UNIT_TESTS=OFF
    -DBUILD_BLACKBOX_TESTS=OFF
    -DBUILD_EXAMPLES=OFF
