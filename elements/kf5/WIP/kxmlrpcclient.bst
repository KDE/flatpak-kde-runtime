kind: cmake
description: KXmlRpcClient

#depends:
#- qt5/qtbase.bst
#- kf5/ki18n.bst
#- kf5/kio.bst
#
build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst
- provisional-kf5-tier2.bst

sources:
- kind: git
  url: git://anongit.kde.org/kxmlrpcclient.git
  track: v5.66.0
  ref: 1bcbd2c37fb89b761fc432f9b8750a229d8184c9
