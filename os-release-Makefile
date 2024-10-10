all:

install:
	mkdir -p ${DESTDIR}/usr/lib
	install os-release ${DESTDIR}/usr/lib
	mkdir -p ${DESTDIR}/usr/share/appdata
	mkdir -p ${DESTDIR}/etc
	install issue ${DESTDIR}/etc
	install issue.net ${DESTDIR}/etc
	install org.kde.Platform.metainfo.xml ${DESTDIR}/usr/share/metainfo
	install org.kde.Sdk.metainfo.xml ${DESTDIR}/usr/share/metainfo
	appstreamcli compose --components=org.kde.Platform --prefix=/ --origin=org.kde.Platform --result-root=${FLATPAK_DEST} --data-dir=${FLATPAK_DEST}/share/app-info/xmls ${FLATPAK_DEST}
	appstreamcli compose --components=org.kde.Sdk --prefix=/ --origin=org.kde.Sdk --result-root=${FLATPAK_DEST} --data-dir=${FLATPAK_DEST}/share/app-info/xmls ${FLATPAK_DEST}
