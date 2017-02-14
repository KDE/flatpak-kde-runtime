set -e

make EXPORT_ARGS="--gpg-sign=61C45BED" all #--generate-static-deltas

# make sure op is in front of the computer, otherwise it times out
read -p "Press enter to continue"

make EXPORT_ARGS="--gpg-sign=61C45BED" export #--generate-static-deltas

echo "uploading to darwini.kde.org"
rsync -a repo/  distribute@darwini.kde.org:/srv/www/distribute.kde.org/flatpak-testing/
