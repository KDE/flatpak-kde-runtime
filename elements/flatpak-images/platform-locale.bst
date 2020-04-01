kind: flatpak_image

config:
  directory: '%{datadir}/runtime/locale'

  metadata:
    Runtime:
      name: org.kde.Platform.Locale

    ExtensionOf:
      ref: runtime/org.kde.Platform/%{arch}/%{fsdk-branch}

build-depends:
- platform-image.bst
