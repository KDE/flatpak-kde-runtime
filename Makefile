REPO=repo
TMP=sdk
ARGS="--user"
FSDK_VERSION?=1.6
ARCH?=$(shell flatpak --default-arch)

all: $(REPO)/config $(foreach file, $(wildcard *.json), $(subst .json,.app,$(file)))

%.app: %.json
	flatpak-builder --arch=$(ARCH) --force-clean --require-changes --ccache --repo=$(REPO) --subject="build of org.kde.Sdk, `date`" ${EXPORT_ARGS} $(TMP) $<

export:
	flatpak build-update-repo $(REPO) ${EXPORT_ARGS} --generate-static-deltas

$(REPO)/config:
	ostree init --mode=archive-z2 --repo=$(REPO)

remotes:
	flatpak remote-add --if-not-exists $(ARGS) flathub https://dl.flathub.org/repo/flathub.flatpakrepo

deps:
	flatpak install --arch=$(ARCH) $(ARGS) flathub org.freedesktop.Platform.Locale $(FSDK_VERSION); true
	flatpak install --arch=$(ARCH) $(ARGS) flathub org.freedesktop.Sdk.Locale $(FSDK_VERSION); true
	flatpak install --arch=$(ARCH) $(ARGS) flathub org.freedesktop.Platform $(FSDK_VERSION); true
	flatpak install --arch=$(ARCH) $(ARGS) flathub org.freedesktop.Sdk $(FSDK_VERSION); true
	flatpak install --arch=$(ARCH) $(ARGS) flathub org.freedesktop.Sdk.Debug $(FSDK_VERSION); true
	flatpak install --arch=$(ARCH) $(ARGS) flathub org.freedesktop.Sdk.Docs $(FSDK_VERSION); true

check:
	json-glib-validate *.json

%.clean: %.json
	json-glib-validate $<
	flatpak-builder --force-clean --arch=$(ARCH) --download-only ${EXPORT_ARGS} app $<

clean:
	rm -rf $(TMP) .flatpak-builder
