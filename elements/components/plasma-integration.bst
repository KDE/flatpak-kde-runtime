kind: cmake

sources:
- kind: git_repo
  url: kde:plasma/plasma-integration.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.6.90-0-g033732c5f8952144cf6654e725baa1de00fda0b8

build-depends:
- components/plasma-wayland-protocols.bst
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/wayland.bst
- components/kcolorscheme.bst
- components/kcompletion.bst
- components/kconfig.bst
- components/kcoreaddons.bst
- components/ki18n.bst
- components/kiconthemes.bst
- components/kio.bst
- components/kjobwidgets.bst
- components/kservice.bst
- components/kstatusnotifieritem.bst
- components/kwidgetsaddons.bst
- components/kwindowsystem.bst
- components/kxmlgui.bst
- components/qqc2-breeze-style.bst
- components/qqc2-desktop-style.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_QT5=OFF
    -DBUILD_QT6=ON
