#!/bin/sh

export > /etc/envvars

echo "Starting runit..."
exec /sbin/runsvdir -P /etc/service
