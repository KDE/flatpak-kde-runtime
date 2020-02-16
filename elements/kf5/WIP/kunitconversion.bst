kind: cmake
description: KUnitConversion

#depends:
#- qt5/qtbase.bst
#- kf5/ki18n.bst
#- filename: base/gettext.bst
#  junction: freedesktop-sdk.bst
#  type: build

build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst

sources:
- kind: git
  url: git://anongit.kde.org/kunitconversion.git
  track: v5.66.0
  ref: 9fa97a80319edf1033017926580eb3f8ad7c96aa
