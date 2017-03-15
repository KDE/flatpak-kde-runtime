REPO=repo
TMP=sdk
ARGS="--user"

all: $(REPO)/config org.kde.Sdk.json
	flatpak-builder --force-clean --ccache --repo=$(REPO) --subject="build of org.kde.Sdk, `date`" ${EXPORT_ARGS} $(TMP) org.kde.Sdk.json

export:
	flatpak build-update-repo $(REPO) ${EXPORT_ARGS}

$(REPO)/config:
	ostree init --mode=archive-z2 --repo=$(REPO)

remotes:
	flatpak remote-add $(ARGS) gnome --from https://sdk.gnome.org/gnome.flatpakrepo --if-not-exists

deps:
	flatpak install $(ARGS) gnome org.freedesktop.Platform.Locale 1.6; true
	flatpak install $(ARGS) gnome org.freedesktop.Sdk.Locale 1.6; true
	flatpak install $(ARGS) gnome org.freedesktop.Platform 1.6; true
	flatpak install $(ARGS) gnome org.freedesktop.Sdk 1.6; true

check:
	json-glib-validate *.json

clean:
	rm -rf $(TMP) .flatpak-builder
