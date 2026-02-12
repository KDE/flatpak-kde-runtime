# SPDX-FileCopyrightText: 2025 Aleix Pol Gonzalez <aleix.pol@codethink.co.uk>
# SPDX-License-Identifier: MIT

kind: flatpak_image

config:
  directory: '%{datadir}/runtime/locale'

  metadata:
    Runtime:
      name: org.kde.Platform.Locale

    ExtensionOf:
      ref: runtime/org.kde.Platform/%{arch}/%{branch}

build-depends:
- flatpak-images/platform-image.bst
