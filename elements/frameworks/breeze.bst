kind: cmake

sources:
- kind: git_repo
  url: kde:plasma/breeze.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.6.90-0-gb0535413efa22bde44166591f6bcbcd475787120

build-depends:
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/breeze-icons.bst
- frameworks/frameworkintegration.bst
- frameworks/kcmutils.bst
- frameworks/kcolorscheme.bst
- frameworks/kconfig.bst
- frameworks/kcoreaddons.bst
- frameworks/ki18n.bst
- frameworks/kiconthemes.bst
- frameworks/kirigami.bst
- frameworks/kwidgetsaddons.bst
- frameworks/kwindowsystem.bst
- qt/qtsvg.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DWITH_DECORATIONS=OFF
    -DWITH_WALLPAPERS=OFF
    -DBUILD_QT5=OFF
    -DBUILD_QT6=ON
