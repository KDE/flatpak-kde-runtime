kind: cmake
description: KNewStuff

runtime-depends:
- kf5/kirigami.bst

depends:
- kf5/kio.bst

build-depends:
- kf5/extra-cmake-modules.bst

sources:
- kind: git
  url: git://anongit.kde.org/knewstuff.git
  track: v5.66.0
  ref: c46fd6666a4cff3cabdb328266d0a94e73e74640
