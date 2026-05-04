kind: makemaker

build-depends:
- freedesktop-sdk.bst:bootstrap/make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/perl.bst

sources:
- kind: cpan
  name: URI
  suffix: authors/id/O/OA/OALDERS/URI-5.31.tar.gz
  sha256sum: b9c4d58b2614b8611ae03a95a6d60ed996f4b311ef3cd5a937b92f1825ecc564
