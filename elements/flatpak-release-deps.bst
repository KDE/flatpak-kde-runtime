kind: stack
description: Collects things that will be put into Flatpak image

depends:
- flatpak-images/sdk.bst
- flatpak-images/sdk-debug.bst
- flatpak-images/sdk-docs.bst
- flatpak-images/sdk-locale.bst
- flatpak-images/platform.bst
- flatpak-images/platform-locale.bst
