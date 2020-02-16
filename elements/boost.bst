kind: manual

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/which.bst
- freedesktop-sdk.bst:components/python3.bst

variables:
  debug-flags: ''

config:
  configure-commands:
  - |
    ./bootstrap.sh --show-libraries

  - |
    ./bootstrap.sh \
    --prefix=%{prefix} \
    --exec-prefix=%{prefix} \
    --with-libraries=filesystem,headers,iostreams,math,python,random,system,thread \
    --libdir=%{libdir} \
    --includedir=%{includedir} \
    --with-python=python3.7

  build-commands:
  - |
    ./b2 headers
  - |
    ./b2

  install-commands:
  - |
    ./b2 install \
    --prefix=%{install-root}%{prefix} \
    --exec-prefix=%{install-root}%{prefix} \
    --libdir=%{install-root}%{libdir} \
    --includedir=%{install-root}%{includedir}

  strip-commands: []

sources:
- kind: tar
  url: https://dl.bintray.com/boostorg/release/1.72.0/source/boost_1_72_0.tar.gz
  ref: c66e88d5786f2ca4dbebb14e06b566fb642a1a6947ad8cc9091f9f445134143f
- kind: patch
  path: patch/boost-python-include.patch
