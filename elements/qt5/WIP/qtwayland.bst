kind: qmake
description: json2bst conversion of qt5/wayland

depends:
- qt5/qtbase.bst
- qt5/qtdeclarative.bst
- freedesktop-sdk.bst:components/xorg-lib-xcb.bst

build-depends:
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/libdrm.bst


sources:
- kind: tar
  url: http://download.qt.io/archive/qt/5.14/5.14.0/submodules/qtwayland-everywhere-src-5.14.0.tar.xz
  ref: 32d4fadb3a8dcee8953e6d92ee567927cd7649be6fc8dd378480664902c22610
- kind: patch
  path: patch/qtwayland-use-gnome-platform-theme-on-gnome-based-desktops.patch
