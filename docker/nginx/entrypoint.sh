#!/bin/ash

set -e

# Check folder ownership
owner_uid=$(stat -c '%u' /var/www/ts)
owner_gid=$(stat -c '%g' /var/www/ts)

exec nginx
