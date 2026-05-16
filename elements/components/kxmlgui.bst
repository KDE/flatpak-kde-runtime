kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kxmlgui.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g9c70c189e9bb31dae071f9a22a4d0dff10e8d694

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/kconfig.bst
- components/kconfigwidgets.bst
- components/kcoreaddons.bst
- components/kglobalaccel.bst
- components/kguiaddons.bst
- components/ki18n.bst
- components/kiconthemes.bst
- components/kitemviews.bst
- components/kwidgetsaddons.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_PYTHON_BINDINGS=OFF
