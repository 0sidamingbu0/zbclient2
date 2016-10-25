#!/bin/sh

	
	curl -d "{\"address\":\"$1\",\"index\":\"1\",\"command\":\"On\",\"commandData\":\"$2\",\"resourceSum\":\"1\"}" 192.168.6.76:8888/zbClient/API/send


