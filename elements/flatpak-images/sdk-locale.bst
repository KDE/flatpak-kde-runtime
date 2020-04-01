kind: flatpak_image

config:
  directory: '%{datadir}/runtime/locale'

  metadata:
    Runtime:
      name: org.kde.Sdk.Locale

    ExtensionOf:
      ref: runtime/org.kde.Sdk/%{arch}/%{fsdk-branch}

build-depends:
- sdk-image.bst
