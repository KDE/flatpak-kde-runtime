kind: cmake
description: KDeclarative

depends:
- kf5/kio.bst
- kf5/kpackage.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

sources:
- kind: git
  url: git://anongit.kde.org/kdeclarative.git
  track: v5.66.0
  ref: fd6a9b58b716a5dc0fb70adf744a8387702f898b
