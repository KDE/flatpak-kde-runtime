kind: collect_integration
description: Combines the integration commands of all components of the runtime into
  a single shell script

config:
  script-path: '%{libexecdir}/freedesktop-post.sh'

build-depends:
- platform.bst
