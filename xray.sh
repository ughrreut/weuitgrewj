#!/bin/sh
if [ ! -f UUID ]; then
  UUID="1c0c97d3-88db-48de-8e93-b5ca38ac8a4c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

