kind: manual

(@):
- flatpak-version.yml

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/os-release.bst    #added to make sure this version is built second and overwrites the 'original'

build-depends:
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/appstream-glib.bst

config:
  build-commands:
  - |
    for i in *.in; do
      m4 -D__RUNTIME_VERSION__=%{runtime-version} -D__RUNTIME_VERSION_DATE__=%{runtime-version-date} "${i}" >"$(basename "${i}" .in)"
    done

  install-commands:
  - |
    mkdir -p "%{install-root}%{indep-libdir}"
    install os-release "%{install-root}%{indep-libdir}"
    mkdir -p "%{install-root}%{sysconfdir}"
    ln -s "$(realpath --relative-to="%{install-root}%{sysconfdir}" "%{install-root}%{indep-libdir}/os-release")" %{install-root}%{sysconfdir}/os-release
    install issue "%{install-root}%{sysconfdir}"
    install issue.net "%{install-root}%{sysconfdir}"
    mkdir -p "%{install-root}%{datadir}/appdata"
    install org.kde.Platform.appdata.xml "%{install-root}%{datadir}/appdata"
    install org.kde.Sdk.appdata.xml "%{install-root}%{datadir}/appdata"
    appstream-compose --basename=org.kde.Platform --prefix=%{install-root}%{prefix} --origin=flatpak org.kde.Platform
    appstream-compose --basename=org.kde.Sdk --prefix=%{install-root}%{prefix} --origin=flatpak org.kde.Sdk

public:
  bst:
    integration-commands:
      - >
        for name in
        "%{datadir}/appdata/org.freedesktop.Platform.appdata.xml"
        "%{datadir}/appdata/org.freedesktop.Sdk.appdata.xml"
        "%{datadir}/app-info/xmls/org.freedesktop.Platform.xml.gz"
        "%{datadir}/app-info/xmls/org.freedesktop.Sdk.xml.gz"
        ; do
        if [ -e $name ]; then rm $name; fi;
        done

    overlap-whitelist:
    - "%{sysconfdir}/issue"
    - "%{sysconfdir}/issue.net"
    - "%{sysconfdir}/os-release"
    - "%{indep-libdir}/os-release"

sources:
- kind: local
  path: files/os-release

