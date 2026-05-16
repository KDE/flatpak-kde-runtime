kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kpackage.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.24.0-0-g276a33f64bea6240edbf1ea89cddc0af2c5c4773

build-depends:
- components/qcoro.bst
- components/qttools.bst
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
- components/qtimageformats.bst
- components/qtsvg.bst
- components/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
