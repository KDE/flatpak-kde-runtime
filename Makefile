ARCH ?= $(shell flatpak --default-arch)
REPO ?= repo
FB_ARGS ?= "--user"
TMP ?= sdk
INSTALL_SOURCE ?= "--install-deps-from=flathub"
BST=bst

ifeq ($(ARCH),x86_64)
COMPAT_ARCH ?= i386
endif

ifdef COMPAT_ARCH
INHERIT_EXTS ?= org.freedesktop.Sdk.Compat.$(COMPAT_ARCH) \
                org.freedesktop.Sdk.Compat.$(COMPAT_ARCH).Debug
endif

ifeq ($(wildcard /run/.containerenv),)
    DISABLE_ROFILES_FUSE =
else
    DISABLE_ROFILES_FUSE = "--disable-rofiles-fuse"
endif

# Generate SPDX-SBOM reports using buildstream-sbom
BST_SBOM?=buildstream-sbom
SPDX_SBOM_DIR := sbom-reports
SPDX_SBOM_COMMON_ARGS := \
    --spdx-creator "Organization: KDE (kde-devel@kde.org)" \
    --deps all
ifneq ($(origin SPDX_SBOM_WITH_LICENSE), undefined)
	SPDX_SBOM_WITH_LICENSE_ARGS := \
		--with-licenses \
		--spdx-comment "Components licensing information isn't guaranteed to be complete nor correct and must only be considered advisory."
endif

${SPDX_SBOM_DIR}:
	rm -rf "$@"
	mkdir -p "$@"

${SPDX_SBOM_DIR}/%.spdx.json: ${SPDX_SBOM_DIR} elements/org.kde.Sdk.bst
	@echo -e "\nCreating $@ report"
	BST=bst $(BST_SBOM) $(SPDX_SBOM_COMMON_ARGS) \
		$(SPDX_SBOM_WITH_LICENSE_ARGS) \
		--spdx-name freedesktop-sdk-${ARCH}-$* \
		--spdx-namespace https://freedesktop-sdk.io/freedesktop_sdk/spdxdocs/$*.spdx.json-${UUID-$*} \
		--output "$@" flatpak-images/$*.bst

generate-spdx-sbom-reports: \
    ${SPDX_SBOM_DIR}/platform.spdx.json \
    ${SPDX_SBOM_DIR}/sdk.spdx.json \

generate-cve-report: $(if $(filter 1,$(REUSE_MANIFESTS)),,manifest) elements/org.kde.Sdk.bst
	$(BST) build freedesktop-sdk.bst:utils/generate-cve-report.bst

	[ -d "nvd-cve-database" ] || ( \
		git clone -n --depth=1 --filter=tree:0 https://gitlab.com/freedesktop-sdk/nvd-cve-database.git && \
		cd nvd-cve-database && git sparse-checkout set nvd-cve-database && \
		git checkout && \
		rm -rf ".git" \
	)

	mkdir -p cve/cve-reports

	$(foreach name,sdk platform, \
		cp -vf $(name)-manifest/usr/manifest.json cve/$(name)-manifest.json;)

	cp -r nvd-cve-database/nvd-cve-database/*.json.gz cve/

	$(BST) shell freedesktop-sdk.bst:utils/generate-cve-report.bst \
		--mount ./cve/ /buildstream-build \
		-- sh -c '\
			generate_cve_report --db-path /buildstream-build --feed-version 2.0 /buildstream-build/sdk-manifest.json /buildstream-build/cve-reports/sdk.md.html && \
			generate_cve_report --db-path /buildstream-build --feed-version 2.0 /buildstream-build/platform-manifest.json /buildstream-build/cve-reports/platform.md.html
		'

	rm -rvf cve-reports
	mv -v cve/cve-reports .
	rm -rf cve

ifneq ($(REUSE_MANIFESTS),1)
	rm -rf sdk-manifest platform-manifest
endif

ifneq ($(REUSE_CVE_DB),1)
	rm -rf nvd-cve-database
endif

manifest:
	rm -rf sdk-manifest/
	rm -rf platform-manifest/

	$(BST) build manifests/platform-manifest.bst manifests/sdk-manifest.bst

	$(BST) artifact checkout manifests/platform-manifest.bst --directory platform-manifest/
	$(BST) artifact checkout manifests/sdk-manifest.bst --directory sdk-manifest/

clean-cve:
	rm -rf cve-reports cve platform-manifest sdk-manifest

all: $(REPO)/config $(foreach file, $(wildcard *.json.in), $(subst .json.in,.app,$(file)))

%.json: %.json.in append-to-json.py kde-sdk.patch
	./append-to-json.py inherit-sdk-extensions $(INHERIT_EXTS) \
		< $< | sed "s,@@SDK_ARCH@@,$(ARCH),g" > $@
	patch -p1 < kde-sdk.patch

%.app: %.json
	flatpak-builder $(INSTALL_SOURCE) $(FB_ARGS) --arch=$(ARCH) $(DISABLE_ROFILES_FUSE) --force-clean --require-changes --ccache --repo=$(REPO) --subject="build of org.kde.Sdk, `date` (`git rev-parse HEAD`)" ${EXPORT_ARGS} $(TMP) $<

freedesktop-sdk/utils/flatpak-builder-to-bst.py:
	git clone https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git

elements/org.kde.Sdk.bst: org.kde.Sdk.json freedesktop-sdk/utils/flatpak-builder-to-bst.py
	python freedesktop-sdk/utils/flatpak-builder-to-bst.py org.kde.Sdk.json --aliases include/aliases.yml --skip kf.skip.yaml

bst-runtime: elements/org.kde.Sdk.bst
	bst build flatpak-images/flatpak-runtimes.bst
	bst artifact checkout flatpak-images/flatpak-runtimes.bst --directory checkout/flatpak-images

export:
	flatpak build-update-repo $(REPO) ${EXPORT_ARGS} --generate-static-deltas

$(REPO)/config:
	ostree init --mode=archive-z2 --repo=$(REPO)

remotes:
	flatpak --user remote-add $(ARGS) --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

check:
	json-glib-validate *.json

%.clean: %.json
	json-glib-validate $<
	flatpak-builder --force-clean --arch=$(ARCH) --download-only ${EXPORT_ARGS} app $<

clean:
	rm -rf $(TMP) .flatpak-builder
