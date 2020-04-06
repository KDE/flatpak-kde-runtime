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
  url: git://anongit.kde.org/kbookmarks.git
  track: v5.66.0
  ref: 6d0796473a58f3e76a0514cbc542e6e97349cd49
