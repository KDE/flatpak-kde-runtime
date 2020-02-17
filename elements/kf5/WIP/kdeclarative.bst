kind: cmake
description: KDeclarative

#depends:
#- qt5/qtbase.bst
#
#build-depends:
#- kf5/extra-cmake-modules.bst
#- qt5/qtdeclarative.bst
#- kf5/kbookmarks.bst
#- kf5/kcompletion.bst
#- kf5/kconfig.bst
#- kf5/kcoreaddons.bst
##- kf5/kglobalaccel.bst
##- kf5/kguiaddons.bst
#- kf5/ki18n.bst
#- kf5/kio.bst
#- kf5/kjobwidgets.bst
#- kf5/kpackage.bst
#- kf5/kservice.bst
##- kf5/kwidgetsaddons.bst
##- kf5/kwindowsystem.bst
#- kf5/solid.bst
##- filename: base/libepoxy.bst
##  junction: freedesktop-sdk.bst
##  type: build
##- filename: base/gettext.bst
##  junction: freedesktop-sdk.bst
##  type: build
#
build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst
- provisional-kf5-tier2.bst
- kf5/kpackage.bst
- kf5/WIP/kiconthemes.bst

sources:
- kind: git
  url: git://anongit.kde.org/kdeclarative.git
  track: v5.66.0
  ref: fd6a9b58b716a5dc0fb70adf744a8387702f898b
