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

config:
  configure-commands:
  - |
    %{cmake} \
    -DDocBookXSL_DIR=/usr/share/xml/docbook/xml/xsl-stylesheets/ \
    -DDocBookXML4_DTD_DIR=/usr/share/xml/docbook/xml-dtd/4.5/

sources:
- kind: git
  url: git://anongit.kde.org/kdoctools.git
  track: v5.66.0
  ref: 2ff90d223537e2bc33d624a0797dfc46996ce403
