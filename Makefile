
all: bst-runtime

bst-runtime:
	bst build flatpak-images/flatpak-runtimes.bst
	bst artifact checkout flatpak-images/flatpak-runtimes.bst --directory checkout/flatpak-images

remotes:
	flatpak --user remote-add $(ARGS) --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

check:
	json-glib-validate *.json

%.clean: %.json
	json-glib-validate $<
	flatpak-builder --force-clean --arch=$(ARCH) --download-only ${EXPORT_ARGS} app $<

clean:
	rm -rf $(TMP) .flatpak-builder
