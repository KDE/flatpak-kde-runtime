kind: stack
description: |
  Stack of components in the Tier 3 KDE frameworks
  Tier 3 Frameworks can depend only on kconfigwidgets, kservice, Tier 2 Frameworks, Tier 1 Frameworks, Qt official frameworks, or other system libraries.

depends:
- kf5/WIP/kconfigwidgets.bst
- kf5/WIP/kdesignerplugin.bst
- kf5/WIP/kglobalaccel.bst
- kf5/WIP/kservice.bst

- kf5/WIP/kiconthemes.bst
- kf5/WIP/ktextwidgets.bst
- kf5/WIP/kemoticons.bst
- kf5/WIP/kded.bst
- kf5/WIP/kwallet.bst

### can't find these ones in the org.kde.Sdk.json.in manifest, haven't incorporated them (yet)
#- kf5/WIP/baloo.bst
#- kf5/WIP/kactivitiesstats.bst
#- kf5/WIP/kdesu.bst
#- kf5/WIP/kpeople.bst
#- kf5/WIP/krunner.bst
