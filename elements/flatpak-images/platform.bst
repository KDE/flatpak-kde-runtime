kind: flatpak_image

config:
  directory: '%{prefix}'
  exclude:
  - debug
  - docs
  - locale

  metadata:
    Runtime:
      name: org.kde.Platform
      runtime: org.freedesktop.Platform/%{arch}/%{branch}
      sdk: org.freedesktop.Sdk/%{arch}/%{branch}

    Environment:
      GI_TYPELIB_PATH: /app/lib/girepository-1.0
      GST_PLUGIN_SYSTEM_PATH: /app/lib/gstreamer-1.0:/usr/lib/extensions/gstreamer-1.0:%{libdir}/gstreamer-1.0
      XDG_DATA_DIRS: /app/share:/usr/share:/usr/share/runtime/share:/run/host/user-share:/run/host/share
      ALSA_CONFIG_DIR: /usr/share/alsa
      ALSA_CONFIG_PATH: /usr/share/alsa/alsa-flatpak.conf


build-depends:
- platform-image.bst
- integration/platform-integration.bst
- freedesktop-sdk.bst:tests/check-dev-files.bst
- freedesktop-sdk.bst:tests/check-rpath.bst
