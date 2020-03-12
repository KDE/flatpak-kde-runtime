kind: cmake
description: Plasma

depends:
- plasma/breeze.bst
- freedesktop-sdk.bst:components/xorg-lib-xcursor.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF
    -DBUILD_TESTING=OFF 
    -DCMAKE_DISABLE_FIND_PACKAGE_FontNotoSans=True
    -DCMAKE_DISABLE_FIND_PACKAGE_FontHack=True

sources:
- kind: git
  url: git://anongit.kde.org/plasma-integration.git
  track: Plasma/5.18
  ref: a3b2b54cc7c5f856318f3bbbd67388818ef77d7e
