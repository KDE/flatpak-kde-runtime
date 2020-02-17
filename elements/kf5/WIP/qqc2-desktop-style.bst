kind: cmake
description: QQC2

#depends:
#- qt5/qtbase.bst
#- qt5/qtdeclarative.bst
#- kf5/kirigami.bst
#- kf5/kiconthemes.bst
#- kf5/kconfigwidgets.bst
#
build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst
- provisional-kf5-tier2.bst

sources:
- kind: git
  url: git://anongit.kde.org/qqc2-desktop-style.git
  track: v5.66.0
  ref: 64d2072eed64b14c50a17ec67828c21afb1d5a00
