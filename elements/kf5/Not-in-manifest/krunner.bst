kind: cmake
description: KRunner

depends:
- qt5/qtbase.bst
- qt5/qtdeclarative.bst
- kf5/kconfig.bst
- kf5/kcoreaddons.bst
- kf5/ki18n.bst
- kf5/kio.bst
- kf5/kservice.bst
- kf5/plasma-framework.bst
- kf5/solid.bst
- kf5/threadweaver.bst
- filename: base/gettext.bst
  junction: freedesktop-sdk.bst
  type: build

sources:
- kind: git
  url: git://anongit.kde.org/krunner
  track: v5.51.0
kind: cmake
