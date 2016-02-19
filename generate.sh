#TODO fix script lookup
sortedframeworks=`~/xdgapp/kde-build-metadata/tools/list_dependencies --drop-path -m ~/xdgapp/kde-build-metadata/ kf5umbrella | grep -v kf5umbrella | grep -v Qt5`

for v in $sortedframeworks
do
    echo -n ",
        {
            \"name\": \"$v\",
            \"cmake\": true,
            \"builddir\": true,
            \"config-opts\": [\"-DKDE_INSTALL_LIBDIR=lib\"],
            \"sources\": [ { \"type\": \"git\", \"url\": \"git://anongit.kde.org/$v.git\", \"branch\": \"v5.19.0\" } ]
        }"
done
