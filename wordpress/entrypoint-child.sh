#!/bin/bash
set -euo pipefail
BASEPATH=/usr/src/wordpress/wp-content
echo "Unzipping plugins"

cd $BASEPATH/plugins
for i in *.zip; do
    unzip $i
done
cd /var/www/html

exec /usr/local/bin/docker-entrypoint.sh "$@"
