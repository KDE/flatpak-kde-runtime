REPO=repo
TMP=sdk
ARGS="--user"
ARCH?=$(shell flatpak --default-arch)

all: $(REPO)/config $(foreach file, $(wildcard *.json), $(subst .json,.app,$(file)))

%.app: %.json
	flatpak-builder --arch=$(ARCH) --force-clean --require-changes --ccache --repo=$(REPO) --subject="build of org.kde.Sdk, `date`" ${EXPORT_ARGS} $(TMP) $<

export:
	flatpak build-update-repo $(REPO) ${EXPORT_ARGS}

$(REPO)/config:
	ostree init --mode=archive-z2 --repo=$(REPO)

remotes:
	flatpak remote-add $(ARGS) gnome --from https://sdk.gnome.org/gnome.flatpakrepo --if-not-exists

deps:
	flatpak install --arch=$(ARCH) $(ARGS) gnome org.freedesktop.Platform.Locale 1.6; true
	flatpak install --arch=$(ARCH) $(ARGS) gnome org.freedesktop.Sdk.Locale 1.6; true
	flatpak install --arch=$(ARCH) $(ARGS) gnome org.freedesktop.Platform 1.6; true
	flatpak install --arch=$(ARCH) $(ARGS) gnome org.freedesktop.Sdk 1.6; true
	flatpak install --arch=$(ARCH) $(ARGS) gnome org.freedesktop.Sdk.Debug 1.6; true
	flatpak install --arch=$(ARCH) $(ARGS) gnome org.freedesktop.Sdk.Docs 1.6; true

check:
	json-glib-validate *.json

clean:
	rm -rf $(TMP) .flatpak-builder
