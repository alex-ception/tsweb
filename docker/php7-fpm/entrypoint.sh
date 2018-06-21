#!/bin/sh

set -e

# Check folder ownership
owner_uid=$(stat -c '%u' /var/www/ts)
owner_gid=$(stat -c '%g' /var/www/ts)

# Check if the /var/www folder is owned by the current www-data user's uid
chown -R www-data:www-data /var/www/ts/var
chown -R www-data:www-data /var/www/ts/logs

exec php-fpm7 -F
