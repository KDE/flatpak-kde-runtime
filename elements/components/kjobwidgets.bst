kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kjobwidgets.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g882fc453a4ec5dda99bdfbcae8f9ef516672a7b9

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/gpgmepp.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:components/libsecret.bst
- components/kcoreaddons.bst
- components/knotifications.bst
- components/kwidgetsaddons.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_PYTHON_BINDINGS=OFF
