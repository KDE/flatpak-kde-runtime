# What is this?
Here you can find the recipes to build KDE's flatpak runtime, namely org.kde.Platform and its org.kde.Sdk. It's a set of libraries that should offer a wide range of library to use in Qt applications, be KDE from or not.

# Getting to grips
Issues can be reported here:
https://bugs.kde.org/enter_bug.cgi?product=Qt%2FKDE%20Flatpak%20Runtime

Here you can find some documentation on how to get the big picture of Flatpak usage in KDE:
https://community.kde.org/Guidelines_and_HOWTOs/Flatpak

There's a [different branch](https://invent.kde.org/packaging/flatpak-kde-runtime/-/branches) for each version of Qt. The KDE Frameworks version updates with it as new stable releases become available.

# Testing
This can generally be built with flatpak-builder as explained in its documentation. There's a Makefile to make it a bit easier to trigger:

## Useful variables
* ARCH: Should be one of the offered by `flatpak --supported-arches`. Static qemu builds can be used for cross-compilation. Defaults to `flatpak --default-arch`
* INSTALL_SOURCE: Where to get the dependencies from. Defaults to flathub.
* EXPORT_ARGS: Extra arguments to pass to flatpak-builder.

## Useful commands
* `make remotes` will add flathub.
* `make check` will make sure the json file is valid.
* `make org.kde.Sdk.app` builds the SDK.
