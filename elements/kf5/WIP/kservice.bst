kind: cmake
description: KService

#depends:
#- kf5/kconfig.bst
#- kf5/kcoreaddons.bst
#- kf5/kcrash.bst
#- kf5/kdbusaddons.bst
#- kf5/ki18n.bst
#
#build-depends:
#- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
#- kf5/extra-cmake-modules.bst
#- kf5/kdoctools.bst
#- qt5/qttools.bst
#
build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst
- provisional-kf5-tier2.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/xcb-util-keysyms.bst

sources:
- kind: git
  url: git://anongit.kde.org/kservice.git
  track: v5.66.0
  ref: 43f26b6d82a1a06a02366346835cf7c0a7d6b2b3
