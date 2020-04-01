kind: flatpak_image

config:
  directory: '%{datadir}/runtime/docs'

  metadata:
    Runtime:
      name: org.kde.Sdk.Docs

    ExtensionOf:
      ref: runtime/org.kde.Sdk/%{arch}/%{fsdk-branch}

build-depends:
- sdk-image.bst
