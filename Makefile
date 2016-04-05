all: repo org.kde.Sdk.json
	rm -rf sdk
	xdg-app-builder --ccache --require-changes --repo=repo --subject="build of org.kde.Sdk, `date`" ${EXPORT_ARGS} sdk org.kde.Sdk.json

finish: all
	xdg-app update

repo:
	ostree init --mode=archive-z2 --repo=repo

remotes:
	wget http://209.132.179.2/keys/nightly.gpg
	wget http://sdk.gnome.org/keys/gnome-sdk.gpg
	xdg-app remote-add --user --gpg-import=nightly.gpg gnome-nightly http://sdk.gnome.org/nightly/repo/
	xdg-app remote-add --user --gpg-import=gnome-sdk.gpg gnome http://sdk.gnome.org/repo/
	rm *.gpg

deps:
	xdg-app install --user gnome-nightly org.freedesktop.Platform 1.4
	xdg-app install --user gnome-nightly org.freedesktop.Sdk 1.4
	xdg-app install --user gnome-nightly org.freedesktop.Platform.Locale 1.4
