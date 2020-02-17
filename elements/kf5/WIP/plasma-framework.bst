kind: cmake
description: Plama

#depends:
#- qt5/qtbase.bst
#- kf5/kactivities.bst
#- kf5/karchive.bst
#- kf5/kconfig.bst
#- kf5/kconfigwidgets.bst
#- kf5/kdbusaddons.bst
#- kf5/kdeclarative.bst
#- kf5/kglobalaccel.bst
#- kf5/kguiaddons.bst
#- kf5/ki18n.bst
#- kf5/kiconthemes.bst
#- kf5/kio.bst
#- kf5/kservice.bst
#- kf5/kwindowsystem.bst
#- kf5/kxmlgui.bst
#- kf5/knotifications.bst
#- kf5/kpackage.bst
#- filename: base/kwayland.bst
#  junction: freedesktop-sdk.bst
#  type: build
#- kf5/kirigami.bst
#- filename: base/gettext.bst
#  junction: freedesktop-sdk.bst
#  type: build
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
- kf5/kpackage.bst

sources:
- kind: git
  url: git://anongit.kde.org/plasma-framework.git
  track: v5.66.0
  ref: 359f85a4412efb9426eb990533cda95047df9791
