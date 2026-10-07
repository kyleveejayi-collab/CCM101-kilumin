
#!/bin/bash

set -e

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_DIR="$SCRIPT_DIR/backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p "$BACKUP_DIR"

docker exec ccm101-mysql sh -c \
'exec mysqldump --single-transaction -u root -p"$MYSQL_ROOT_PASSWORD" wordpress' \
"$BACKUP_DIR/wordpress-db-$DATE.sql"


find "$BACKUP_DIR" -type f -name "*.sql" -mtime +7 -delete

echo "Backup completed: $BACKUP_DIR/wordpress-db-$DATE.sql"
