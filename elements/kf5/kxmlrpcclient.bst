kind: cmake
description: KXmlRpcClient

depends:
- kf5/kio.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5XmlRpcClient.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kxmlrpcclient.git
  track: v5.67.0
  ref: 26464e5dce64a667aa44342b190dd1361766062f
