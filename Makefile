REPO=repo
ARGS="--user"

all: $(REPO)/config org.kde.Sdk.json
	rm -rf sdk
	xdg-app-builder --ccache --require-changes --repo=$(REPO) --subject="build of org.kde.Sdk, `date`" ${EXPORT_ARGS} sdk org.kde.Sdk.json

finish: all
	xdg-app update

$(REPO)/config:
	ostree init --mode=archive-z2 --repo=$(REPO)

remotes:
	wget http://209.132.179.2/keys/nightly.gpg
	wget http://sdk.gnome.org/keys/gnome-sdk.gpg
	xdg-app remote-add $(ARGS) --gpg-import=nightly.gpg gnome-nightly http://sdk.gnome.org/nightly/repo/
	xdg-app remote-add $(ARGS) --gpg-import=gnome-sdk.gpg gnome http://sdk.gnome.org/repo/
	rm *.gpg

deps:
	xdg-app install $(ARGS) gnome-nightly org.freedesktop.Platform 1.4; true
	xdg-app install $(ARGS) gnome-nightly org.freedesktop.Sdk 1.4; true
	xdg-app install $(ARGS) gnome-nightly org.freedesktop.Sdk.Locale 1.4; true
	xdg-app install $(ARGS) gnome-nightly org.freedesktop.Platform.Locale 1.4; true
