kind: cmake
description: phonon-gstreamer

depends:
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- kf5/phonon.bst
- qt5/qtx11extras.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF
    -DPHONON_BUILD_PHONON4QT5=ON

sources:
- kind: git
  url: https://invent.kde.org/libraries/phonon-gstreamer.git
  track: v4.10.0
  ref: 9c868d623d560418f6f6a513cf37667ced558c5b
