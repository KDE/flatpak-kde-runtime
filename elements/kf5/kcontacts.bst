kind: cmake
description: kcontacts

depends:
- kf5/ki18n.bst
- kf5/kcoreaddons.bst
- kf5/kcodecs.bst
- kf5/kconfig.bst

build-depends:
- kf5/extra-cmake-modules.bst

sources:
- kind: git
  url: https://anongit.kde.org/kcontacts.git
  track: v5.66.0
  ref: 8e89a04c5ad698274b4f0a04268f58400d797ba8
