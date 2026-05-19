kind: cmake

sources:
- kind: git_repo
  url: kde:accessibility/kontrast.git
  track: v*
  ref: v26.04.1-0-g76c176dcadf25dfd6fe27439db375cf5731b7b0b

build-depends:
- frameworks/kdoctools.bst
- deps/qcoro.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- frameworks/kconfig.bst
- frameworks/kcoreaddons.bst
- frameworks/kcrash.bst
- frameworks/ki18n.bst
- frameworks/kirigami.bst
- libraries/kirigami-addons.bst
- qt/qtdeclarative.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
