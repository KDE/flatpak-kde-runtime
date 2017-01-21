make EXPORT_ARGS="--gpg-sign=61C45BED" all export #--generate-static-deltas
built=$?
if [ $built -eq 0 ]
then
    echo "uploading to darwini.kde.org"
    rsync -a repo/  distribute@darwini.kde.org:/srv/www/distribute.kde.org/flatpak-testing/
else
    echo "didn't upload"
fi
 
