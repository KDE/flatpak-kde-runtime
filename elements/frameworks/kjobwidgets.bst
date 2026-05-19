kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kjobwidgets.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g90db0d70c33a918ae580ab6ffe502c6683d6f570

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/gpgmepp.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:components/libsecret.bst
- frameworks/kcoreaddons.bst
- frameworks/knotifications.bst
- frameworks/kwidgetsaddons.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_PYTHON_BINDINGS=OFF
