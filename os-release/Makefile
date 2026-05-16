all:

install:
	install -Dm0644 os-release -t ${DESTDIR}/usr/lib
	install -Dm0644 issue -t ${DESTDIR}/etc
	install -Dm0644 issue.net -t ${DESTDIR}/etc
	install -Dm0644 org.kde.Platform.metainfo.xml -t ${DESTDIR}/usr/share/metainfo
	install -Dm0644 org.kde.Sdk.metainfo.xml -t ${DESTDIR}/usr/share/metainfo
	appstreamcli compose --components=org.kde.Platform --origin=org.kde.Platform --result-root=${DESTDIR} --data-dir=${DESTDIR}/usr/share/app-info/xmls ${DESTDIR}
	appstreamcli compose --components=org.kde.Sdk --origin=org.kde.Sdk --result-root=${DESTDIR} --data-dir=${DESTDIR}/usr/share/app-info/xmls ${DESTDIR}

