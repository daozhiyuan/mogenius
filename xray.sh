#!/bin/sh
if [ ! -f UUID ]; then
  UUID="e22872ae-ccd9-3b25-8091-156cb685b888"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

