kind: cmake
kind: cmake
description: KActivitiesStats

depends:
- qt5/qtbase.bst
- kf5/kconfig.bst
- kf5/kactivities.bst
- filename: base/boost.bst
  junction: freedesktop-sdk.bst
  type: build

sources:
- kind: git
  url: git://anongit.kde.org/kactivities-stats
  track: v5.51.0
