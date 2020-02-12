kind: cmake
description: KWayland

depends:
- qt5/qtbase.bst

build-depends:
- kf5/extra-cmake-modules.bst

sources:
- kind: git
  url: git://anongit.kde.org/kwayland.git
  track: v5.66.0
  ref: a1c9fc8913aab46db950034748963311ab311474
