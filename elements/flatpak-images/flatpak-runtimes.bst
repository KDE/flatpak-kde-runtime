# SPDX-FileCopyrightText: 2025 Aleix Pol Gonzalez <aleix.pol@codethink.co.uk>
# SPDX-License-Identifier: MIT

kind: flatpak_repo
build-depends:
- freedesktop-sdk.bst:components/flatpak.bst
(?):
# platform and sdk should not be built on 64bit
- arch in ["x86_64", "aarch64", "riscv64", "ppc64le"]:
    build-depends:
      (>):
      - filename:
        - flatpak-images/platform.bst
        - flatpak-images/platform-locale.bst
        - flatpak-images/sdk.bst
        - flatpak-images/sdk-debug.bst
        - flatpak-images/sdk-docs.bst
        - flatpak-images/sdk-locale.bst
        config:
          flatpak-image: true
