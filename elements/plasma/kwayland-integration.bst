kind: cmake
description: KWayland

depends:
- kf5/kidletime.bst
- kf5/kwindowsystem.bst
- kf5/kwayland.bst
- kf5/kguiaddons.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git_tag
  url:  https://invent.kde.org/plasma/kwayland-integration.git
  track: Plasma/5.18
  ref: v5.18.3-0-g8bfceb8256d79ee3ca548702bf0545036536ae5e
