kind: cmake
description: KDesignerPlugin

#depends:
#- qt5/qtbase.bst
#- kf5/kcoreaddons.bst
#- kf5/kconfig.bst
#- kf5/kdesignerplugin.bst
#
build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst
- provisional-kf5-tier2.bst

sources:
- kind: git
  url: git://anongit.kde.org/kdesignerplugin.git
  track: v5.66.0
  ref: c1361325808549c389f7760b57aa56117bd5b953
