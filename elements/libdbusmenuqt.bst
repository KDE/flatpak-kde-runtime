kind: cmake
description: libdbusmenuqt (needed for knotifications)
# According to the build logs of kf5/knotifications, libdbusmenuqt is an optional build dependency,
# Would provide "Support for notification area menus via the DBusMenu protocol"
# If we get this building properly, then we should add it as a dependency for knotifications.
# Unsure whether to make it a build dependency or a general dependency.

depends:
- qt5/qtbase.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF
    -DWITH_DOC=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libdbusmenu-qt5.so'

sources:
- kind: bzr
  url: http://bazaar.launchpad.net/~dbusmenu-team/libdbusmenu-qt
  track: trunk
  ref: 271
  #ref: 0.9.3+16.04.20160218-0ubuntu1 #(The tag name/label for this revision)
