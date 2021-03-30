ARCH ?= $(shell flatpak --default-arch)
REPO ?= repo
FB_ARGS ?= "--user"
TMP ?= sdk
INSTALL_SOURCE ?= "--install-deps-from=flathub"

ifeq ($(ARCH),x86_64)
COMPAT_ARCH ?= i386
endif

ifdef COMPAT_ARCH
INHERIT_EXTS ?= org.freedesktop.Sdk.Compat.$(COMPAT_ARCH) \
                org.freedesktop.Sdk.Compat.$(COMPAT_ARCH).Debug
endif

all: $(REPO)/config $(foreach file, $(wildcard *.json.in), $(subst .json.in,.app,$(file)))

%.json: %.json.in append-to-json.py
	./append-to-json.py inherit-sdk-extensions $(INHERIT_EXTS) \
	< $< | sed "s,@@SDK_ARCH@@,$(ARCH),g" > $@

%.app: %.json
	flatpak-builder $(INSTALL_SOURCE) $(FB_ARGS) --arch=$(ARCH) --force-clean --require-changes --ccache --repo=$(REPO) --subject="build of org.kde.Sdk, `date` (`git rev-parse HEAD`)" ${EXPORT_ARGS} $(TMP) $<

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
