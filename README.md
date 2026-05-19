# What is this?
Here you can find the recipes to build KDE's flatpak runtime, namely org.kde.Platform and its org.kde.Sdk. It's a set of libraries that should offer a wide range of library to use in Qt applications, be KDE from or not.

You can find the source in here: https://invent.kde.org/packaging/flatpak-kde-runtime

# Getting to grips
Issues can be reported here:
https://bugs.kde.org/enter_bug.cgi?product=Qt%2FKDE%20Flatpak%20Runtime

Here you can find some documentation on how to get the big picture of Flatpak usage in KDE:
https://community.kde.org/Guidelines_and_HOWTOs/Flatpak

There's a [different branch](https://invent.kde.org/packaging/flatpak-kde-runtime/-/branches) for each version of Qt. The KDE Frameworks version updates with it as new stable releases become available.

# Testing
This can generally be built with flatpak-builder as explained in its documentation.

## Useful commands
* `bst artifact checkout flatpak-images/flatpak-runtimes.bst --directory checkout/repo/`
* `flatpak --user install ./repo org.kde.Platform org.kde.Sdk` installs the built SDK.

# Buildstream

To update the versions and refs of the sources for the elements, run `bst source track qt/qtbase.bst`.

To build an element locally, run `bst build qt/qtdeclarative.bst`.
