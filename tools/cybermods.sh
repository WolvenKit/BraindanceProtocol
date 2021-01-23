root=$PWD
archive="bd_cybermods.zip"

rm -f builds/$archive
mkdir -p builds/

zip -r builds/$archive mods/braindance_protocol icon.png README.md manifest.json

