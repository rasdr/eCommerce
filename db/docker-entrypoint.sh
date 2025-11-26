#!/bin/bash
set -e

echo "[Entrypoint] Starting MySQL setup..."

# Initialize the MySQL data directory (if empty)
if [ ! -d /var/lib/mysql/mysql ]; then
    echo "[Entrypoint] Initializing MySQL data directory..."
    mysqld --initialize-insecure
fi

# Start MySQL (no networking yet)
echo "[Entrypoint] Starting temporary MySQL server..."
mysqld_safe --skip-networking &
pid="$!"

# Wait for server to start
for i in {30..0}; do
    if mysqladmin ping &>/dev/null; then
        break
    fi
    echo "[Entrypoint] Waiting for MySQL to start..."
    sleep 2
done

if ! mysqladmin ping &>/dev/null; then
    echo "[Entrypoint] ERROR: MySQL failed to start."
    exit 1
fi

# Create default database if requested
if [ -n "$MYSQL_DATABASE" ]; then
    echo "[Entrypoint] Creating database '$MYSQL_DATABASE'..."
    mysql -u root -e "CREATE DATABASE IF NOT EXISTS \`$MYSQL_DATABASE\`;"
fi

# Import SQL file if it exists
if [ -f /docker-entrypoint-initdb.d/init.sql ]; then
    echo "[Entrypoint] Importing /docker-entrypoint-initdb.d/init.sql..."
    mysql -u root "$MYSQL_DATABASE" < /docker-entrypoint-initdb.d/init.sql || echo "[Entrypoint] SQL import failed!"
fi

echo "bind-address = 0.0.0.0" >> /etc/mysql/mysql.conf.d/mysqld.cnf
mysql -u root -e "CREATE USER 'bedrift'@'%' IDENTIFIED BY 'Passord123';"
mysql -u root -e "GRANT SELECT, INSERT, UPDATE, DELETE ON tverr.* TO 'bedrift'@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"

# Stop temporary MySQL server
echo "[Entrypoint] Shutting down temporary MySQL..."
mysqladmin -u root shutdown

# Start MySQL normally in foreground (so container stays alive)
echo "[Entrypoint] Starting MySQL in foreground..."
exec mysqld_safe
