#!/bin/bash

service="ssh"

echo "Checking Service: $service"

status = $(systemctl is-active $service)

echo "Current status: $status"

if [$status = "active" ] ; then
	echo "service is running"
else
	echo"Serivce is not running"
	echo"Starting service..."

	sudo systemctl start $service

	echo "Service started"
fi
