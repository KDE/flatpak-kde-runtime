kind: stack
description: |
  Stack of components in the Tier 3 KDE frameworks
  Tier 4 Frameworks can depend only on other Tier 4 Frameworks, Tier 3 Frameworks, Tier 2 Frameworks, Tier 1 Frameworks, Qt official frameworks, or other system libraries.

depends:
- kf5/qqc2-desktop-style.bst         # 
- kf5/kxmlgui.bst                    # 
- kf5/kbookmarks.bst                 # depends on: kxmlgui
- kf5/kio.bst                        # depends on: kbookmarks

- kf5/kinit.bst                      # depends on: kio
- kf5/knewstuff.bst                  # depends on: kio
- kf5/knotifyconfig.bst              # depends on: kio
- kf5/kxmlrpcclient.bst              # depends on: kio
- kf5/purpose.bst                    # depends on: kio
- kf5/kparts.bst                     # depends on: kio
- kf5/kdeclarative.bst               # depends on: kio
- kf5/ktexteditor.bst                # depends on: kparts
- kf5/kcmutils.bst                   # depends on: kdeclarative
- kf5/plasma-framework.bst           # depends on: kdeclarative 


### can't find these ones in the org.kde.Sdk.json.in manifest, haven't incorporated them (yet)
#- kf5/WIP/baloo.bst
#- kf5/WIP/kactivitiesstats.bst
#- kf5/WIP/kdesu.bst
#- kf5/WIP/kpeople.bst
#- kf5/WIP/krunner.bst
