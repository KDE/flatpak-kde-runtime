kind: cmake
description: KWallet

#depends:
#- qt5/qtbase.bst
#- kf5/kconfig.bst
#- kf5/kcoreaddons.bst
#- kf5/kdbusaddons.bst
#- kf5/kiconthemes.bst
#- kf5/knotifications.bst
#- kf5/ki18n.bst
#- kf5/kwidgetsaddons.bst
#- kf5/kwindowsystem.bst
#- filename: base/libgcrypt.bst
#  junction: freedesktop-sdk.bst
#  type: build
#- filename: base/gettext.bst
#  junction: freedesktop-sdk.bst
#  type: build

build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst
- provisional-kf5-tier2.bst
- kf5/WIP/kconfigwidgets.bst
- kf5/WIP/kservice.bst

sources:
- kind: git
  url: git://anongit.kde.org/kwallet.git
  track: v5.66.0
  ref: c2e7dfab6d6f38c8daf0c54c4a8995e2a2ba43e9
