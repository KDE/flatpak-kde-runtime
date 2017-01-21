set -e

make EXPORT_ARGS="--gpg-sign=61C45BED" all export #--generate-static-deltas

echo "uploading to darwini.kde.org"
rsync -a repo/  distribute@darwini.kde.org:/srv/www/distribute.kde.org/flatpak-testing/
