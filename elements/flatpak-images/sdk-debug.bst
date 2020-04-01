kind: flatpak_image

config:
  directory: '%{debugdir}'

  metadata:
    Runtime:
      name: org.kde.Sdk.Debug

    ExtensionOf:
      ref: runtime/org.kde.Sdk/%{arch}/%{fsdk-branch}

build-depends:
- sdk-image.bst
