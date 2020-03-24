kind: stack
description: |
  Stack of components for the KDE runtimes
  This is a first draft, including basically everything from the original flatpak manifest file,
  plus the freedesktop-sdk sdk stack, and nothing else.
  (Mostly to start figuring out how all of this works.)

depends:
- freedesktop-sdk.bst:sdk.bst
- platform.bst # currently platform contains everything in kde, therefore nothing extra to add after this.
