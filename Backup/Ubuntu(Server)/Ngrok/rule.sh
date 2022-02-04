#!/bin/bash

URL=$(<url.txt)
echo "$URL"

curl -X PATCH "https://api.cloudflare.com/client/v4/zones/<Zone ID>/pagerules/a11fcab87fca8e7fd21c509d820039f7" \
     -H "Content-Type:application/json" \
     -H "X-Auth-Key:<My Cloudflare Auth Key>" \
     -H "X-Auth-Email:<My Email>" \
     --data '{"target":"ezcloud.ml","constraint":{"operator":"matches","value":"plex.ezcloud.ml"},"actions":[{"id":"forwarding_url", "value": {"url": "'$URL'", "status_code": 301}}],"status":"active"}'
