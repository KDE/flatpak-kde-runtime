kind: cmake
description: KCrash

depends:
- kf5/kcoreaddons.bst
- kf5/kwindowsystem.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/xcb-util-keysyms.bst
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst

sources:
- kind: git
  url: git://anongit.kde.org/kcrash.git
  track: v5.66.0
  ref: 9869717026051af7975819a45334521feb950f7e
