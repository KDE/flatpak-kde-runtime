kind: cmake
description: KBookmarks

depends:
- kf5/kxmlgui.bst

build-depends:
- kf5/extra-cmake-modules.bst
- qt5/qttools.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5Bookmarks.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kbookmarks.git
  track: v5.67.0
  ref: d5829a1c58ae44a34debcf9498bc638c6deb2672
