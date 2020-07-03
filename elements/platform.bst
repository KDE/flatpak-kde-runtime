kind: stack
description: |
  Stack of components for the KDE runtimes
  This is a first draft, including basically everything from the original flatpak manifest file,
  plus the freedesktop-sdk platform stack, and nothing else.
  (Mostly to start figuring out how all of this works.)

depends:
- freedesktop-sdk.bst:platform.bst
- qt5.bst
- plasma.bst
- lmdb.bst
- kf5-tier1.bst
- kf5-tier2.bst
- kf5-tier3.bst
- kf5-tier4.bst
- boost.bst
- fcitx-platforminputcontext.bst
- libdbusmenuqt.bst
- libdmtx.bst
- libical.bst
- os-release.bst
- perl-uri-escape.bst
- qrencode.bst
