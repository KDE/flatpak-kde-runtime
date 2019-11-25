ARCH ?= $(shell flatpak --default-arch)
REPO ?= repo
FB_ARGS ?= "--user"
TMP=sdk
INSTALL_SOURCE? = "--install-deps-from=flathub"

all: $(REPO)/config $(foreach file, $(wildcard *.json.in), $(subst .json.in,.app,$(file)))

%.json: %.json.in
	sed "s,@@SDK_ARCH@@,$(ARCH),g" $< > $@

%.app: %.json
	flatpak-builder $(INSTALL_SOURCE) --arch=$(ARCH) --force-clean --require-changes --ccache --repo=$(REPO) --subject="build of org.kde.Sdk, `date` (`git rev-parse HEAD`)" ${EXPORT_ARGS} $(TMP) $<

export:
	flatpak build-update-repo $(REPO) ${EXPORT_ARGS} --generate-static-deltas

$(REPO)/config:
	ostree init --mode=archive-z2 --repo=$(REPO)

remotes:
	flatpak remote-add $(ARGS) --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

check:
	json-glib-validate *.json

%.clean: %.json
	json-glib-validate $<
	flatpak-builder --force-clean --arch=$(ARCH) --download-only ${EXPORT_ARGS} app $<

clean:
	rm -rf $(TMP) .flatpak-builder
