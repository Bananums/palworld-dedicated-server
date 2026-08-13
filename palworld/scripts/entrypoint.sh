#!/bin/sh
set -eu

sudo chown -R user:usergroup /pal/Package/Pal/Saved

DEFAULTS=$(find /pal/Package -maxdepth 4 -name DefaultPalWorldSettings.ini 2>/dev/null | head -n1)
[ -n "$DEFAULTS" ] || { echo "entrypoint: DefaultPalWorldSettings.ini not found under /pal/Package" >&2; exit 1; }

sudo cp "$DEFAULTS" /pal/defaults/.DefaultPalWorldSettings.ini.tmp
sudo mv /pal/defaults/.DefaultPalWorldSettings.ini.tmp /pal/defaults/DefaultPalWorldSettings.ini

exec /bin/sh /pal/Package/PalServer.sh "$@"

