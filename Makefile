REPO=repo
TMP=sdk
ARGS="--user"

all: $(REPO)/config org.kde.Sdk.json
	rm -rf $(TMP)
	xdg-app-builder --ccache --require-changes --repo=$(REPO) --subject="build of org.kde.Sdk, `date`" ${EXPORT_ARGS} $(TMP) org.kde.Sdk.json

$(REPO)/config:
	ostree init --mode=archive-z2 --repo=$(REPO)

remotes:
	wget http://sdk.gnome.org/keys/gnome-sdk.gpg
	xdg-app remote-add $(ARGS) --gpg-import=gnome-sdk.gpg gnome http://sdk.gnome.org/repo/
	rm *.gpg

deps:
	xdg-app install $(ARGS) gnome org.freedesktop.Platform 1.4; true
	xdg-app install $(ARGS) gnome org.freedesktop.Sdk 1.4; true
	xdg-app install $(ARGS) gnome org.freedesktop.Sdk.Locale 1.4; true
	xdg-app install $(ARGS) gnome org.freedesktop.Platform.Locale 1.4; true
