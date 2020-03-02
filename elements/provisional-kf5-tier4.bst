kind: stack
description: |
  Stack of components in the Tier 3 KDE frameworks
  Tier 4 Frameworks can depend only on other Tier 4 Frameworks, Tier 3 Frameworks, Tier 2 Frameworks, Tier 1 Frameworks, Qt official frameworks, or other system libraries.

depends:
- kf5/kxmlgui.bst                   # iconthemes configwidgets global-accel
- kf5/WIP/qqc2-desktop-style.bst        # iconthemes configwidgets 
- kf5/WIP/kcmutils.bst                  # xmlgui configwidgets service
- kf5/WIP/kbookmarks.bst                # xmlgui configwidgets
- kf5/WIP/kio.bst                       # bookmarks service

- kf5/WIP/kinit.bst                     # kio service
- kf5/WIP/knewstuff.bst                 # kio iconthemes
- kf5/WIP/kparts.bst                    # kio iconthemes
- kf5/WIP/kdeclarative.bst              # kio iconthemes
- kf5/WIP/knotifyconfig.bst             # kio
- kf5/WIP/ktexteditor.bst               # kio
- kf5/WIP/kxmlrpcclient.bst             # kio
- kf5/WIP/purpose.bst                   # kio
- kf5/WIP/plasma-framework.bst          # declarative configwidgets globalaccel


### can't find these ones in the org.kde.Sdk.json.in manifest, haven't incorporated them (yet)
#- kf5/WIP/baloo.bst
#- kf5/WIP/kactivitiesstats.bst
#- kf5/WIP/kdesu.bst
#- kf5/WIP/kpeople.bst
#- kf5/WIP/krunner.bst
