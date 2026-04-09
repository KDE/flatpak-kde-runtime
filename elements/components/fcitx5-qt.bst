kind: cmake

sources:
- kind: git_repo
  url: github:fcitx/fcitx5-qt.git
  track: '*.*.*'
  ref: 5.1.13-0-g2a86c5b7b763c661f0a0573470170c378d723af9

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- components/qtbase.bst

variables:
  license-files-extra: LICENSES/LGPL-2.1-or-later.txt
  cmake-local: >-
    -DENABLE_QT4=OFF
    -DENABLE_QT5=OFF
    -DENABLE_QT6=ON
    -DBUILD_ONLY_PLUGIN=ON

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libFcitx5QClient.so'
