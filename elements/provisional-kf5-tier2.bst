kind: stack
description: |
  Stack of components in the Tier 2 KDE frameworks
  Tier 2 Frameworks can depend only on Tier 1 Frameworks, Qt official frameworks, or other system libraries.

depends:
- filename: kf5/WIP/kactivities.bst
- filename: kf5/WIP/kauth.bst
- filename: kf5/WIP/kcompletion.bst
- filename: kf5/WIP/kcrash.bst
- filename: kf5/WIP/kdoctools.bst
- filename: kf5/WIP/kjobwidgets.bst
- filename: kf5/WIP/knotifications.bst
- filename: kf5/WIP/kpty.bst
- filename: kf5/WIP/kunitconversion.bst
- filename: kf5/WIP/syndication.bst

### can't find these ones in the org.kde.Sdk.json.in manifest, haven't incorporated them (yet)
#- filename: kf5/WIP/kfilemetadata.bst
