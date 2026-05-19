kind: cmake

sources:
- kind: git_repo
  url: kde:frameworks/kdoctools.git
  track: v6.*
  exclude:
  - '*rc*'
  ref: v6.26.0-0-g6645649958326fac6d879626ff5729604ef25342

build-depends:
- deps/perl-uri.bst
- qt/qttools.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/extra-cmake-modules.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- frameworks/karchive.bst
- qt/qtbase.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTING=OFF
    -DDocBookXSL_DIR=/usr/share/xml/docbook/xml/xsl-stylesheets/
    -DDTD_PATH_LIST=/usr/share/xml/docbook/xml-dtd/4.5/
