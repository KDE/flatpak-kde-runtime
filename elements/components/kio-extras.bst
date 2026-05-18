kind: cmake

sources:
- kind: git_repo
  url: kde:network/kio-extras.git
  track: v*
  ref: v26.04.1-0-gee34363babc8fa35aa126193f2d3be3e0a7373bf

build-depends:
- deps/qcoro.bst
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/libproxy.bst
- freedesktop-sdk.bst:components/libtirpc.bst
- freedesktop-sdk.bst:components/taglib.bst
- components/solid.bst
- components/syntax-highlighting.bst
- components/kimageformats.bst
- components/karchive.bst
- components/kcmutils.bst
- components/kconfig.bst
- components/kcoreaddons.bst
- components/kdbusaddons.bst
- components/kdnssd.bst
- components/ki18n.bst
- components/kio.bst
- components/knotifications.bst
- components/kservice.bst
- components/kwidgetsaddons.bst
- qt/qtimageformats.bst
- qt/qtsvg.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
