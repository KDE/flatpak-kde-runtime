kind: stack
description: Collects things that will be put into Flatpak image

depends:
- filename: flatpak-images/sdk.bst
#- filename: flatpak-images/sdk-debug.bst
#- filename: flatpak-images/sdk-docs.bst
#- filename: flatpak-images/sdk-locale.bst
#- filename: flatpak-images/sdk-arch-libs.bst
#- filename: flatpak-images/sdk-arch-libs-debug.bst
- filename: flatpak-images/platform.bst
#- filename: flatpak-images/platform-locale.bst
#- filename: flatpak-images/platform-arch-libs.bst
#- filename: flatpak-images/platform-arch-libs-debug.bst
#- filename: flatpak-images/platform-vaapi.bst
#- filename: flatpak-images/platform-ffmpeg-full.bst
#- filename: flatpak-images/clinfo.bst
#- filename: flatpak-images/glxinfo.bst
#- filename: flatpak-images/glxinfo-debug.bst
#- filename: flatpak-images/rust.bst
#- filename: flatpak-images/vulkaninfo.bst
#- filename: flatpak-images/vainfo.bst
#- filename: flatpak-images/vainfo-debug.bst
#- filename: flatpak-images/pre-bootstrap.bst
#- filename: flatpak-images/mesa.bst
#- filename: flatpak-images/mesa-git.bst
#- filename: flatpak-images/cross-toolchains.bst
