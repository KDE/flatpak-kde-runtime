# Flatpak KDE Runtime - Buildstream port

## What is this?
This is a project to build the KDE Flatpak runtimes, using Buildstream instead of Flatpak Builder.

## Background
The KDE Flatpak runtimes are a set of Flatpak runtimes that are needed to run KDE Flatpak apps. The official runtimes are currently built using a manifest file and an application called flatpak-builder. The runtimes are then made available from Flathub, along with many apps. 

This project uses buildstream instead of using Flatpak Builder to build the KDE runtimes, as a proof of concept and as a demonstration of the advantages of buildstream.

Links:
Offical KDE Flatpak Runtime project: https://invent.kde.org/kde/flatpak-kde-runtime.
Info on Flatpak and runtimes: https://flatpak.org/
Flathub: https://flathub.org


## Buildstream
Buildstream is a free software tool for integrating software stacks. A buildstream project involves breaking a large project down into distinct, separate elements and tracking the dependencies between elements.

It has the potential to offer faster builds for developers working on the KDE runtimes, because it caches each element separately. If something changes in the project, buildstream only rebuilds the elements which have changed, or which depend on elements which have changed.

# Building the runtimes
### Install Buildstream, and Buildstream-External
Building this project requires both buildstream (the core features), and a set of buildstream plugins called Buildstream External. 

Installation instructions for buildstream can be found at https://docs.buildstream.build/1.4.2/main_install.html

The buildstream external project can be found at https://gitlab.com/BuildStream/bst-external. The project can be cloned to your local machine, and installed with pip.

    git clone https://gitlab.com/BuildStream/bst-external.git
    cd bst-external
    pip install --user -e .

### Build and check out flatpak-release.bst
Clone this project to your local machine and checkout the buildstream branch:

    git clone https://gitlab.com/freedesktop-sdk/flatpak-kde-runtime.git
    cd flatpak-kde-runtime
    git checkout dwinship/port-qt5.14-to-buildstream

Then run the following two commands:

    bst build flatpak-release.bst
    bst checkout flatpak-release.bst ~/kde-runtimes-repository

The first command (bst build) accesses a bst file and builds a corresponding build artifact; the artifact is then stored in the build cache. In this case the bst file is 'elements/flatpak-release.bst' and the build artifact is a flatpak repository containing the kde runtimes.
Depending on your hardware, the build command may take several hours to run the first time.

The second command (bst checkout) copies the build artifact, and puts the copy in your file system. If the checkout command succeeds, you should now have a new directory in your home folder, called 'kde-runtimes-repository'. This is the flatpak repository.

(The final argument in the checkout command determines the path and the name where the artifact will be copied. "~/kde-runtimes-repository" is just an example. Choose any name and path you prefer.)

# Testing/Using the Runtimes
(The following commands assume that you've already installed flatpak)

    flatpak remote-add --no-gpg-verify kde-runtimes ~/kde-runtimes-repository
    flatpak remote-ls (--all) kde-runtimes
    flatpak install kde-runtimes org.kde.Platform
    flatpak install kde-runtimes org.kde.Sdk

The first command adds a new flatpak remote, called "kde-runtimes" (again, you can give the remote any name you wish, kde-runtimes is an example). The final argument should be the location of the checked out respository.
The second command gives a list of all the runtimes available in the repository. This confirms you've successfully added the repository as a flatpak remote.
The third and fourth commands install the Platform and Sdk runtimes.

To test the platform runtime, go to flathub and download a KDE app that requires the appropriate branch of the kde runtime. It should automatically use the intalled, locally built version of the runtime.

To test the Sdk runtime (used when building flathub apps), build a KDE Flatpak app as normal, using the installed runtime.

Note: 
If you already have the offical kde runtimes installed, you may need to uninstall them temporarily while testing the locally-built ones.
You can use the 'flatpak list --runtime' command to check which runtimes are installed, and which remote each one came from. This will be useful to keep track of whether you're using the offically released version or the locally built version.

# The runtimes
This project currently produces a repository containing six runtimes:
* org.kde.Platform.Locale
* org.kde.Platform
* org.kde.Sdk.Debug
* org.kde.Sdk.Docs
* org.kde.Sdk.Locale
* org.kde.Sdk
