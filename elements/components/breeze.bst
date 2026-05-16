kind: cmake

sources:
- kind: git_repo
  url: kde:plasma/breeze.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.6.90-0-gb0535413efa22bde44166591f6bcbcd475787120

build-depends:
- components/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- components/breeze-icons.bst
- components/frameworkintegration.bst
- components/kcmutils.bst
- components/kcolorscheme.bst
- components/kconfig.bst
- components/kcoreaddons.bst
- components/ki18n.bst
- components/kiconthemes.bst
- components/kirigami.bst
- components/kwidgetsaddons.bst
- components/kwindowsystem.bst
- components/qtsvg.bst
- components/qtdeclarative.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DWITH_DECORATIONS=OFF
    -DWITH_WALLPAPERS=OFF
    -DBUILD_QT5=OFF
    -DBUILD_QT6=ON
