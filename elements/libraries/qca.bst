kind: cmake

sources:
- kind: git_repo
  url: kde:libraries/qca.git
  track: v2.*
  ref: v2.3.10-0-gdf5171e3c4baf346581f15af5a040e61b166a332

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:components/cyrus-sasl.bst
- freedesktop-sdk.bst:components/openssl.bst
- qt/qt5compat.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DQCA_INSTALL_IN_QT_PREFIX=ON
    -DBUILD_WITH_QT6=ON
