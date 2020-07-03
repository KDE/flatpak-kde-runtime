kind: cmake
description: Baloo

depends:
- qt5/qtbase.bst
- qt5/qtdeclarative.bst
- kf5/kcoreaddons.bst
- kf5/kconfig.bst
- kf5/kdbusaddons.bst
- kf5/ki18n.bst
- kf5/kidletime.bst
- kf5/solid.bst
- kf5/kfilemetadata.bst
- kf5/kcrash.bst
- kf5/kio.bst
- lmdb.bst
- filename: base/gettext.bst
  junction: freedesktop-sdk.bst
  type: build

sources:
- kind: git
  url: git://anongit.kde.org/baloo
  track: v5.51.0
