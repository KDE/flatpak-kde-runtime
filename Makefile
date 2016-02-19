all: repo org.kde.Sdk.json
	rm -rf sdk
	xdg-app-builder --ccache --require-changes --repo=repo --subject="build of org.kde.Sdk, `date`" ${EXPORT_ARGS} sdk org.kde.Sdk.json

repo:
	ostree  init --mode=archive-z2 --repo=repo
