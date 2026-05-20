kind: cmake

sources:
- kind: git_repo
  url: github:frankosterfeld/qtkeychain.git
  track: v0.*
  ref: v0.14.0-0-ge63da2868465db18eb35a312b2635c26fdc46923

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/libsecret.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_WITH_QT6=ON
