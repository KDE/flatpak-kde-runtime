kind: cmake
description: KIO

#depends:
#- qt5/qttools.bst
#
#build-depends:
#- kf5/extra-cmake-modules.bst
#- kf5/karchive.bst
#- kf5/kbookmarks.bst
#- kf5/kcompletion.bst
#- kf5/kconfig.bst
#- kf5/kcrash.bst
##- kf5/kconfigwidgets.bst
#- kf5/kcoreaddons.bst
#- kf5/kdbusaddons.bst
##- kf5/kdoctools.bst
#- kf5/ki18n.bst
##- kf5/kiconthemes.bst
##- kf5/kitemviews.bst
#- kf5/kjobwidgets.bst
#- kf5/ktextwidgets.bst
##- kf5/kwidgetsaddons.bst
##- kf5/kwindowsystem.bst
#- kf5/solid.bst
##- filename: base/libxslt.bst
##  junction: freedesktop-sdk.bst
##  type: build
##- freedesktop-sdk.bst:components/libxslt.bst
#
build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst
- provisional-kf5-tier2.bst
- kf5/WIP/kservice.bst

sources:
- kind: git
  url: git://anongit.kde.org/kio.git
  track: v5.66.0
  ref: 9b8f41f87a9b5d1460a5f31a1b790a984f164ed3
