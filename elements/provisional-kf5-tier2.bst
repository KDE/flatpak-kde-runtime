kind: stack
description: |
  Stack of components in the Tier 2 KDE frameworks
  Tier 2 Frameworks can depend only on Tier 1 Frameworks, Qt official frameworks, or other system libraries.

depends:
- filename: kf5/kactivities.bst
- filename: kf5/kauth.bst
- filename: kf5/kcompletion.bst
- filename: kf5/kcrash.bst
- filename: kf5/kdoctools.bst
- filename: kf5/kjobwidgets.bst
- filename: kf5/knotifications.bst
- filename: kf5/kpackage.bst
- filename: kf5/kpty.bst
- filename: kf5/kunitconversion.bst
- filename: kf5/syndication.bst

### can't find these ones in the org.kde.Sdk.json.in manifest, haven't incorporated them (yet)
#- filename: kf5/WIP/kfilemetadata.bst
