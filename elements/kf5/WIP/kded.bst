kind: cmake
description: KDED

#depends:
#- qt5/qtbase.bst
#- kf5/kconfig.bst
#- kf5/kcoreaddons.bst
#- kf5/kcrash.bst
#- kf5/kdbusaddons.bst
#- kf5/kio.bst
#- kf5/kinit.bst
#- filename: base/libxslt.bst
#  junction: freedesktop-sdk.bst
#  type: build
#- kf5/karchive.bst
#
build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst
- provisional-kf5-tier2.bst
- kf5/WIP/kservice.bst

sources:
- kind: git
  url: git://anongit.kde.org/kded.git
  track: v5.66.0
  ref: afb5bc8212af8187fafd56c2b54ed694c879e4cc
