# SPDX-FileCopyrightText: 2025 Aleix Pol Gonzalez <aleix.pol@codethink.co.uk>
# SPDX-License-Identifier: MIT

kind: flatpak_image
config:
  directory: '%{prefix}'
  exclude:
  - debug
  - docs
  - locale
  metadata:
    Runtime:
      name: org.kde.Sdk
      runtime: org.kde.Platform/%{arch}/%{branch}
      sdk: org.kde.Sdk/%{arch}/%{branch}
    Environment:
      GI_TYPELIB_PATH: /app/lib/girepository-1.0
      GST_PLUGIN_PATH: /app/lib/gstreamer-1.0:/usr/lib/extensions/gstreamer-1.0:%{libdir}/codecs-extra/lib/gstreamer-1.0:%{libdir}/gstreamer-1.0
      XDG_DATA_DIRS: /app/share:/usr/share:/usr/share/runtime/share:/run/host/user-share:/run/host/share
      __EGL_EXTERNAL_PLATFORM_CONFIG_DIRS: /etc/egl/egl_external_platform.d:%{libdir}/GL/egl/egl_external_platform.d:/usr/share/egl/egl_external_platform.d
      QT_PLUGIN_PATH: /app/lib/plugins:/usr/share/runtime/lib/plugins
      QML2_IMPORT_PATH: /app/lib/qml
      KDE_FORK_SLAVES: '1'
      PYTHONUSERBASE: /var/data/python
      ALSA_CONFIG_PATH: /usr/share/alsa/alsa-flatpak.conf
      ALSA_CONFIG_DIR: /usr/share/alsa
    Context:
      filesystems: xdg-config/kdeglobals:ro;
    Session Bus Policy:
      com.canonical.AppMenu.Registrar: talk
      org.kde.kconfig.notify: talk
      org.kde.KGlobalSettings: talk
    Extension org.kde.Sdk.Docs:
      directory: share/runtime/docs
      bundle: true
      autodelete: true
      no-autodownload: true
    Extension org.kde.Sdk.Locale:
      directory: share/runtime/locale
      autodelete: true
      locale-subset: true
    Extension org.kde.KStyle:
      directory: share/runtime/lib/plugins/
      subdirectories: true
      no-autodownload: true
      version: '%{branch}'
      merge-dirs: styles
      add-ld-path: lib
      download-if: active-gtk-theme
    Extension org.kde.PlatformInputContexts:
      directory: share/runtime/lib/plugins/
      subdirectories: true
      autodelete: true
      no-autodownload: true
      version: '%{branch}'
      merge-dirs: platforminputcontexts
      add-ld-path: lib
    Extension org.inqlude.WaylandDecoration:
      directory: share/runtime/lib/plugins/
      subdirectories: true
      no-autodownload: true
      version: '%{branch}'
      merge-dirs: wayland-decoration-client
      add-ld-path: lib
      //TODO: This is currently only used for gnome platform plugin and should be
        its own extension point
      download-if: on-xdg-desktop-GNOME;on-xdg-desktop-GNOME-classic

    # extending from freedesktop SDK as BuildStream flatpak_image doesn't support Extensions inheritance
    # https://gitlab.com/freedesktop-sdk/freedesktop-sdk/-/blob/master/elements/flatpak-images/platform.bst?ref_type=heads#L30
    # When syncing, skip the Debug, Docs and Locale extensions, and
    # add the freedesktop-sdk version to extensions that don't have
    # a version.
    Extension org.freedesktop.Platform.GL:
      # 1.4 is for Nvidia drivers
      versions: "%{freedesktop-sdk-flatpak-branch};%{freedesktop-sdk-flatpak-branch-extra};1.4"
      version: "1.4"
      directory: "%{lib}/GL"
      subdirectories: "true"
      no-autodownload: "true"
      autodelete: "false"
      add-ld-path: "lib"
      merge-dirs: "%{gl_merge_dirs}"
      download-if: "active-gl-driver"
      enable-if: "active-gl-driver"
      autoprune-unless: active-gl-driver

    Extension org.freedesktop.Platform.VulkanLayer:
      version: "%{freedesktop-sdk-flatpak-branch}"
      directory: "lib/extensions/vulkan"
      subdirectories: "true"
      no-autodownload: "true"
      merge-dirs: "share/vulkan/implicit_layer.d;share/vulkan/explicit_layer.d;"

    Extension org.freedesktop.Platform.Timezones:
      directory: share/zoneinfo

    Extension org.freedesktop.Platform.GStreamer:
      directory: lib/extensions/gstreamer-1.0
      subdirectories: 'true'
      no-autodownload: 'true'

    Extension org.freedesktop.Platform.Icontheme:
      directory: share/runtime/share/icons
      subdirectories: 'true'
      no-autodownload: 'true'
      version: '1.0'

    Extension org.gtk.Gtk3theme:
      directory: share/runtime/share/themes
      subdirectories: 'true'
      subdirectory-suffix: gtk-3.0
      no-autodownload: 'true'
      version: '3.22'
      download-if: active-gtk-theme

    Extension org.freedesktop.Sdk.Extension:
      subdirectories: 'true'
      directory: lib/sdk
      no-autodownload: 'true'
      add-ld-path: lib

    Extension org.freedesktop.Platform.codecs-extra:
      directory: '%{lib}/codecs-extra'
      version: "%{freedesktop-sdk-flatpak-branch-extra}"
      add-ld-path: lib
      autodelete: 'true'

    Extension org.freedesktop.Platform.VAAPI.Intel:
      directory: '%{lib}/dri/intel-vaapi-driver'
      autodelete: 'false'
      no-autodownload: 'true'
      download-if: have-intel-gpu
      autoprune-unless: have-intel-gpu

    Extension org.freedesktop.Platform.VAAPI.nvidia:
      directory: '%{lib}/dri/nvidia-vaapi-driver'
      autodelete: 'false'
      no-autodownload: 'true'
      add-ld-path: lib
      download-if: have-kernel-module-nvidia
      autoprune-unless: have-kernel-module-nvidia

    Extension org.freedesktop.Platform.amd:
      directory: '%{lib}/dri/amd'
      autodelete: 'false'
      no-autodownload: 'true'
      add-ld-path: lib
      download-if: have-kernel-module-amdgpu
      autoprune-unless: have-kernel-module-amdgpu
      subdirectories: "true"

    (?):
    - arch == "x86_64":
        Extension org.freedesktop.Sdk.Compat.i386:
          directory: 'lib/i386-linux-gnu'
          autodelete: 'true'
          no-autodownload: 'true'
          add-ld-path: '.'

        Extension org.freedesktop.Sdk.Compat.i386.Debug:
          directory: 'lib/debug/usr/lib/i386-linux-gnu'
          autodelete: 'true'
          no-autodownload: 'true'

        Extension org.freedesktop.Sdk.Compat.aarch64:
          directory: 'lib/aarch64-linux-gnu'
          autodelete: 'true'
          no-autodownload: 'true'
          add-ld-path: '.'

        Extension org.freedesktop.Sdk.Compat.aarch64.Debug:
          directory: "lib/debug/usr/lib/aarch64-linux-gnu"
          autodelete: 'true'
          no-autodownload: 'true'

build-depends:
- flatpak-images/sdk-image.bst
- freedesktop-sdk.bst:integration/sdk-integration.bst
- freedesktop-sdk.bst:flatpak-images/copy-ld-debug.bst
- freedesktop-sdk.bst:integration/app-debug-link.bst

variables:
  # Obtain the versions of the flatpak extensions
  (@):
  - freedesktop-sdk.bst:include/repo_branches.yml

(@):
- freedesktop-sdk.bst:elements/flatpak-images/include/platform-vars.yml
