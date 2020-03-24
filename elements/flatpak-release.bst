kind: flatpak_repo
description: Generates a flatpak repository with all flatpak image elements

build-depends:
- freedsesktop-sdk.bst:public-stacks/flatpak-publish-tools.bst
- filename: flatpak-release-deps.bst

config:
  arch: '%{arch}' # This is the interface for flatpak-repo plugin 
  repo-mode: bare-user-only
  environment:
  - public-stacks/flatpak-publish-tools.bst
  (?):
  - target_arch == 'i686':
      copy-refs:
      - src: runtime/org.freedesktop.Platform.Compat.%{arch}/%{arch}/%{branch}
        dest: runtime/org.freedesktop.Platform.Compat.%{arch}/x86_64/%{branch}
        #- src: runtime/org.freedesktop.Platform.Compat.%{arch}.Debug/%{arch}/%{branch}
        #  dest: runtime/org.freedesktop.Platform.Compat.%{arch}.Debug/x86_64/%{branch}
        #- src: runtime/org.freedesktop.Platform.GL.default/%{arch}/%{branch}
        #  dest: runtime/org.freedesktop.Platform.GL32.default/x86_64/%{branch}
      - src: runtime/org.freedesktop.Sdk.Compat.%{arch}/%{arch}/%{branch}
        dest: runtime/org.freedesktop.Sdk.Compat.%{arch}/x86_64/%{branch}
        #- src: runtime/org.freedesktop.Sdk.Compat.%{arch}.Debug/%{arch}/%{branch}
        #  dest: runtime/org.freedesktop.Sdk.Compat.%{arch}.Debug/x86_64/%{branch}
        #- src: runtime/org.freedesktop.Platform.VAAPI.Intel/%{arch}/%{branch}
        #  dest: runtime/org.freedesktop.Platform.VAAPI.Intel.%{arch}/x86_64/%{branch}
        #- src: runtime/org.freedesktop.Platform.GL.mesa-git/%{arch}/%{branch}
        #  dest: runtime/org.freedesktop.Platform.GL32.mesa-git/x86_64/%{branch}
        #- src: runtime/org.freedesktop.Platform.ffmpeg-full/%{arch}/%{branch}
        #  dest: untime/org.freedesktop.Platform.ffmpeg-full.%{arch}/x86_64/%{branch}

  - target_arch == 'arm':
      copy-refs:
      - src: runtime/org.freedesktop.Platform.Compat.%{arch}/%{arch}/%{branch}
        dest: runtime/org.freedesktop.Platform.Compat.%{arch}/aarch64/%{branch}
        #- src: runtime/org.freedesktop.Platform.Compat.%{arch}.Debug/%{arch}/%{branch}
        #  dest: runtime/org.freedesktop.Platform.Compat.%{arch}.Debug/aarch64/%{branch}
        #- src: runtime/org.freedesktop.Platform.GL.default/%{arch}/%{branch}
        #  dest: runtime/org.freedesktop.Platform.GL32.default/aarch64/%{branch}
      - src: runtime/org.freedesktop.Sdk.Compat.%{arch}/%{arch}/%{branch}
        dest: runtime/org.freedesktop.Sdk.Compat.%{arch}/x86_64/%{branch}
        #- src: runtime/org.freedesktop.Sdk.Compat.%{arch}.Debug/%{arch}/%{branch}
        #  dest: runtime/org.freedesktop.Sdk.Compat.%{arch}.Debug/x86_64/%{branch}

  - target_arch == 'aarch64':
      copy-refs:
      - src: runtime/org.freedesktop.Sdk.Compat.%{arch}/%{arch}/%{branch}
        dest: runtime/org.freedesktop.Sdk.Compat.%{arch}/x86_64/%{branch}
        #- src: runtime/org.freedesktop.Sdk.Compat.%{arch}.Debug/%{arch}/%{branch}
        #  dest: runtime/org.freedesktop.Sdk.Compat.%{arch}.Debug/x86_64/%{branch}
