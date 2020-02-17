kind: cmake
description: KTextEditor

#depends:
#- qt5/qtbase.bst
#- kf5/karchive.bst
#- kf5/kconfig.bst
#- kf5/kguiaddons.bst
#- kf5/ki18n.bst
#- kf5/kio.bst
#- kf5/kparts.bst
#- kf5/sonnet.bst
#- kf5/kiconthemes.bst
#- kf5/ksyntaxhighlighting.bst
#- filename: base/gettext.bst
#  junction: freedesktop-sdk.bst
#  type: build
#
build-depends:
- kf5/extra-cmake-modules.bst
- qt5.bst
- provisional-kf5-tier1.bst
- provisional-kf5-tier2.bst

sources:
- kind: git
  url: git://anongit.kde.org/ktexteditor.git
  track: v5.66.0
  ref: c1f4213eaf81cf8c50ef89c27a5156b2f6bf3caa
