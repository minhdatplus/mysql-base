#!/bin/bash
if [ -z "$MYSQL_ROOT_PASSWORD" ]; then
    echo "MYSQL_ROOT_PASSWORD is not set"
    exit 1
fi
mysqladmin ping -h localhost -u root -p"$MYSQL_ROOT_PASSWORD" > /dev/null 2>&1