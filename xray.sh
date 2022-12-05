#!/bin/sh
if [ ! -f UUID ]; then
  UUID="7c50fde2-3a1b-4563-837e-393cfed45e86"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

