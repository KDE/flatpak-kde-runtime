kind: cmake
description: KIdleTime

depends:
- qt5/qtbase.bst
- ${@bb.utils.contains(DISTRO_FEATURES,.bst
- x11,.bst
- qt5/qtx11extras,.bst
- ,.bst
- d)}.bst

sources:
- kind: git
  url: git://anongit.kde.org/kidletime
  track: v5.51.0
kind: cmake
