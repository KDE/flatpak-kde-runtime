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
#- plasma/plasma-activities.bst
- frameworks/solid.bst
- frameworks/syntax-highlighting.bst
- frameworks/kimageformats.bst
- frameworks/karchive.bst
- frameworks/kcmutils.bst
- frameworks/kconfig.bst
- frameworks/kcoreaddons.bst
- frameworks/kdbusaddons.bst
- frameworks/kdnssd.bst
- frameworks/ki18n.bst
- frameworks/kio.bst
- frameworks/knotifications.bst
- frameworks/kservice.bst
- frameworks/kwidgetsaddons.bst
- qt/qtimageformats.bst
- qt/qtsvg.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DBUILD_ACTIVITIES=OFF
