root=$PWD
tmp=".nexus"
archive="bd_nexus.zip"
nmm="bin/x64/plugins/cyber_engine_tweaks/mods"

rm -f builds/$archive
mkdir -p builds/$tmp/$nmm

cp -r mods/braindance_protocol builds/$tmp/$nmm

cd builds/$tmp && zip -r $root/builds/$archive $nmm
cd $root && zip -r builds/$archive LICENSE

# Cleanup
rm -rf $root/builds/$tmp
