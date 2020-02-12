kind: cmake
description: KWayland

depends:
- qt5/qtbase.bst
- filename: desktop/wayland.bst
  junction: freedesktop-sdk.bst
  type: build

sources:
- kind: git
  url: git://anongit.kde.org/kwayland
  track: v5.51.0
