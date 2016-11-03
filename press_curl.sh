#!/bin/sh

	
	curl -d "{\"address\":\"$1\",\"indaddressex\":\"1\",\"event\":\"PressUp\",\"eventData\":\"\",\"linkQuality\":\"137\",\"macAddr\":\"$2\"}" 127.0.0.1:10080/device/API/command
	echo $1 $2


