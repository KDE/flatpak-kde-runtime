kind: stack
description: |
  Stack of components in the Tier 3 KDE frameworks
  Tier 4 Frameworks can depend only on other Tier 4 Frameworks, Tier 3 Frameworks, Tier 2 Frameworks, Tier 1 Frameworks, Qt official frameworks, or other system libraries.

depends:
- kf5/kxmlgui.bst                    # 
- kf5/qqc2-desktop-style.bst         # 
- kf5/kbookmarks.bst                 # xmlgui
- kf5/kio.bst                        # bookmarks
- kf5/kdeclarative.bst               # kio

- kf5/kinit.bst                      # kio
- kf5/knewstuff.bst                  # kio
- kf5/kparts.bst                     # kio
- kf5/knotifyconfig.bst              # kio
- kf5/WIP/ktexteditor.bst            # kio
- kf5/WIP/kxmlrpcclient.bst          # kio
- kf5/WIP/purpose.bst                # kio
- kf5/WIP/kcmutils.bst               # kdeclarative
- kf5/WIP/plasma-framework.bst       # kdeclarative 


### can't find these ones in the org.kde.Sdk.json.in manifest, haven't incorporated them (yet)
#- kf5/WIP/baloo.bst
#- kf5/WIP/kactivitiesstats.bst
#- kf5/WIP/kdesu.bst
#- kf5/WIP/kpeople.bst
#- kf5/WIP/krunner.bst
