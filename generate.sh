make EXPORT_ARGS="--gpg-sign=61C45BED"
built=$?
kdeconnect-cli -d ce25f4e532ef3c25 --ping-msg "flatpak built: $?"

if [ $built -eq 0 ]
then
    rsync -a repo/  distribute@darwini.kde.org:/srv/www/distribute.kde.org/flatpak-testing/
    kdeconnect-cli -d ce25f4e532ef3c25 --ping-msg "flatpak done: $?"
fi
 
