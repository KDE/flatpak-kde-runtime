kind: stack
description: |
  Stack of components in the Tier 2 KDE frameworks
  Tier 2 Frameworks can depend only on Tier 1 Frameworks, Qt official frameworks, or other system libraries.

depends:
- kf5/kactivities.bst
- kf5/kauth.bst
- kf5/kcompletion.bst
- kf5/kcontacts.bst
- kf5/kcrash.bst
- kf5/kdoctools.bst
- kf5/kjobwidgets.bst
- kf5/knotifications.bst
- kf5/kpty.bst
- kf5/kunitconversion.bst
- kf5/phonon-gstreamer.bst
- kf5/syndication.bst

### can't find these ones in the org.kde.Sdk.json.in manifest, haven't incorporated them (yet)
#- filename: kf5/WIP/kfilemetadata.bst
