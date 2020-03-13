kind: cmake
description: KXmlRpcClient

depends:
- kf5/kio.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: git://anongit.kde.org/kxmlrpcclient.git
  track: v5.66.0
  ref: 1bcbd2c37fb89b761fc432f9b8750a229d8184c9
