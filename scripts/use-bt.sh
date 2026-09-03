#!/bin/bash

if ! systemctl is-active --quiet bluetooth.service; then
	sudo systemctl start bluetooth.service
fi

bluetoothctl
