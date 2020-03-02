kind: cmake
description: KWallet

depends:
- kf5/kconfigwidgets.bst
- kf5/knotifications.bst
- kf5/kservice.bst

build-depends:
- kf5/extra-cmake-modules.bst
- kf5/kdoctools.bst

sources:
- kind: git
  url: git://anongit.kde.org/kwallet.git
  track: v5.66.0
  ref: c2e7dfab6d6f38c8daf0c54c4a8995e2a2ba43e9
