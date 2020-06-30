kind: flatpak_image

build-depends:
- platform-image.bst
- integration/platform-integration.bst
- freedesktop-sdk.bst:tests/check-dev-files.bst
- freedesktop-sdk.bst:tests/check-rpath.bst

config:
  directory: '%{prefix}'
  exclude:
  - debug
  - docs
  - locale

  metadata:
    Runtime:
      name: org.kde.Platform
      runtime: org.freedesktop.Platform/%{arch}/%{fsdk-branch}
      sdk: org.freedesktop.Sdk/%{arch}/%{fsdk-branch}

    Environment:
      GI_TYPELIB_PATH: /app/lib/girepository-1.0
      GST_PLUGIN_SYSTEM_PATH: /app/lib/gstreamer-1.0:/usr/lib/extensions/gstreamer-1.0:%{libdir}/gstreamer-1.0
      XDG_DATA_DIRS: /app/share:/usr/share:/usr/share/runtime/share:/run/host/user-share:/run/host/share
      ALSA_CONFIG_DIR: /usr/share/alsa
      ALSA_CONFIG_PATH: /usr/share/alsa/alsa-flatpak.conf

    Extension org.kde.Platform.Locale:
      directory: share/runtime/locale
      autodelete: 'true'
      locale-subset: 'true'

    Extension org.kde.KStyle:
      directory: "share/runtime/lib/plugins/"
      subdirectories: 'true'
      no-autodownload: 'true'
      version: "5.14"
      merge-dirs: "styles"
      download-if: "active-gtk-theme"

    Extension org.kde.PlatformTheme:
      directory: "share/runtime/lib/plugins/"
      subdirectories: 'true'
      no-autodownload: 'true'
      version: "5.14"
      merge-dirs: "platformthemes"
      //TODO: "This is currently only used for gnome platform plugin and should be its own extension point"
      download-if: "on-xdg-desktop-GNOME;on-xdg-desktop-GNOME-classic"

    Extension org.kde.PlatformInputContexts:
      directory: "share/runtime/lib/plugins/"
      subdirectories: 'true'
      autodelete: 'true'
      no-autodownload: 'true'
      version: "5.14"
      merge-dirs: "platforminputcontexts"

    Extension org.kde.WaylandDecoration:
      directory: "share/runtime/lib/plugins/"
      subdirectories: 'true'
      no-autodownload: 'true'
      version: "5.14"
      merge-dirs: "wayland-decoration-client"
      //TODO: "This is currently only used for gnome platform plugin and should be its own extension point"
      download-if: "on-xdg-desktop-GNOME;on-xdg-desktop-GNOME-classic"
