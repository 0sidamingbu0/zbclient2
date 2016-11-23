zbclient:zbclient.c
	gcc zbclient.c -o zbclient -lmicrohttpd -lcurl -lpthread -lwiringPi -ljson-c
