all: repo org.kde.Sdk.json
	rm -rf sdk
	xdg-app-builder --ccache --require-changes --repo=repo --subject="build of org.kde.Sdk, `date`" ${EXPORT_ARGS} sdk org.kde.Sdk.json

finish: all
	xdg-app update

repo:
	ostree init --mode=archive-z2 --repo=repo

deps:
	for i in `xdg-app remote-ls gnome-nightly | grep freedesktop.*.Locale`; do \
		xdg-app install gnome-nightly $$i;\
	done;\
