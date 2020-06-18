kind: cmake
description: kcontacts

depends:
- kf5/ki18n.bst
- kf5/kcoreaddons.bst
- kf5/kcodecs.bst
- kf5/kconfig.bst

build-depends:
- kf5/extra-cmake-modules.bst

variables:
  cmake-local: >
    -DENABLE_TESTING=OFF

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libKF5Contacts.so'

sources:
- kind: git
  url: https://invent.kde.org/frameworks/kcontacts.git
  track: v5.67.0
  ref: f3b24af048a57b98887c7444c9f27eafb13ffd4a
