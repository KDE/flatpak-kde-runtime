kind: cmake
description: KNotifyConfig

#depends:
#- qt5/qtbase.bst
#- kf5/phonon.bst
#- kf5/kcompletion.bst
#- kf5/kconfig.bst
#- kf5/ki18n.bst
#- kf5/kio.bst
#- filename: base/gettext.bst
#  junction: freedesktop-sdk.bst
#  type: build
#
build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst
- provisional-kf5-tier2.bst

sources:
- kind: git
  url: git://anongit.kde.org/knotifyconfig.git
  track: v5.66.0
  ref: f9f571262d26e48636d61ec043231535cf08593f
