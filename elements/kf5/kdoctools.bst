kind: cmake
description: KDocTools

depends:
- kf5/karchive.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst        #Seems to be needed (elements that depend on kdoctools won't build correctly, if docbook-xsl isn't a runtime dependency of kdoctools)

build-depends:
- kf5/extra-cmake-modules.bst
- kf5/ki18n.bst
- perl-uri-escape.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF
    -DDTD_PATH_LIST=/usr/share/xml/docbook/xml-dtd/4.5/
    -DDocBookXSL_DIR=/usr/share/xml/docbook/xml/xsl-stylesheets/

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5DocTools.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kdoctools.git
  track: v5.67.0
  ref: a18df5150f4aec06883ce5ff06f3fc54cbf2f8c5
