# SPDX-FileCopyrightText: 2025 Aleix Pol Gonzalez <aleix.pol@codethink.co.uk>
# SPDX-License-Identifier: MIT

kind: flatpak_image

config:
  directory: '%{datadir}/runtime/docs'

  metadata:
    Runtime:
      name: org.kde.Sdk.Docs

    ExtensionOf:
      ref: runtime/org.kde.Sdk/%{arch}/%{branch}

build-depends:
- flatpak-images/sdk-image.bst
