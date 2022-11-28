#!/bin/sh
if [ ! -f UUID ]; then
  UUID="372a40d8-6ee1-11ed-a1eb-0242ac120002"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

