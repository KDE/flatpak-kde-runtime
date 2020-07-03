kind: cmake
description: Baloo

build-depends:
- kf5/extra-cmake-modules.bst

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
- filename: components/gettext.bst
  junction: freedesktop-sdk.bst
  type: build

sources:
- kind: git
  url: https://invent.kde.org/frameworks/baloo.git
  track: v5.56.0
  ref: 2ffc99bfc9b238649a7fa52c36b1cf7f3c53c5b5
