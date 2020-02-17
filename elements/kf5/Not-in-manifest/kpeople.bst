kind: cmake
description: KPeople

depends:
- qt5/qtbase.bst
- qt5/qtdeclarative.bst
- kf5/kcoreaddons.bst
- kf5/ki18n.bst
- kf5/kwidgetsaddons.bst
- kf5/kservice.bst
- kf5/kitemviews.bst
- filename: base/gettext.bst
  junction: freedesktop-sdk.bst
  type: build

sources:
- kind: git
  url: git://anongit.kde.org/kpeople
  track: v5.51.0
kind: cmake
