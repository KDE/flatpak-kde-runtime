kind: cmake
description: KPackage

runtime-depends:
- kf5/karchive.bst

depends:
- kf5/kcoreaddons.bst
- kf5/ki18n.bst

build-depends:
- kf5/extra-cmake-modules.bst
- kf5/kdoctools.bst

sources:
- kind: git
  url: git://anongit.kde.org/kpackage.git
  track: v5.66.0
  ref: 101c9e8841be3cd47300f93b8ec3c82e5405640e
