REPO=repo
TMP=sdk
ARGS="--user"
ARCH?=$(shell flatpak --default-arch)

all: $(REPO)/config $(foreach file, $(wildcard *.json), $(subst .json,.app,$(file)))

%.app: %.json
	flatpak-builder --arch=$(ARCH) --force-clean --require-changes --ccache --repo=$(REPO) --subject="build of org.kde.Sdk, `date`" ${EXPORT_ARGS} $(TMP) $<

export:
	flatpak build-update-repo $(REPO) ${EXPORT_ARGS} --generate-static-deltas

$(REPO)/config:
	ostree init --mode=archive-z2 --repo=$(REPO)

remotes:
	flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

deps:
	flatpak install --arch=$(ARCH) $(ARGS) flathub org.freedesktop.Platform.Locale 1.6; true
	flatpak install --arch=$(ARCH) $(ARGS) flathub org.freedesktop.Sdk.Locale 1.6; true
	flatpak install --arch=$(ARCH) $(ARGS) flathub org.freedesktop.Platform 1.6; true
	flatpak install --arch=$(ARCH) $(ARGS) flathub org.freedesktop.Sdk 1.6; true
	flatpak install --arch=$(ARCH) $(ARGS) flathub org.freedesktop.Sdk.Debug 1.6; true
	flatpak install --arch=$(ARCH) $(ARGS) flathub org.freedesktop.Sdk.Docs 1.6; true

check:
	json-glib-validate *.json

%.clean: %.json
	json-glib-validate $<
	flatpak-builder --force-clean --arch=$(ARCH) --download-only ${EXPORT_ARGS} app $<

clean:
	rm -rf $(TMP) .flatpak-builder
