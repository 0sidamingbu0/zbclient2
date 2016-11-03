sudo apt-get install libmicrohttpd-dev
sudo apt-get install libcurl4-gnutls-dev
sudo apt-get install libjson-c-dev

sudo cp curl/* /usr/include -r
sudo cp json/* /usr/include
sudo cp microhttpd/* /usr/include

gcc zbserver.c -o zbserver -lmicrohttpd -lwiringPi -lpthread
gcc zbclient.c -o zbclient -lwiringPi -lpthread -lcurl -ljson-c

//gcc zbclient.c -o zbclient -lwiringPi -lcurl -lpthread -ljson-c -lmicrohttpd
sudo cp json-c/* /usr/lib/

#build libmicrohttp.so
donwload src
cp to raspi
sudo apt-get install autoconf
sudo apt-get install litool
autoreconf -fi
./configure --disable-curl
sudo make
sudo make install
sudo cp /usr/local/lib/libmicrohttp.* /lib/arm-linux-gnueabihf/
regcc .c
ok
----
ls -l |grep libmicrohttpd
sudo find / -name libmicrohttpd*
=====
cd zbclient
sudo rm /etc/supervisor/conf.d/*
sudo cp zbclient.conf /etc/supervisior/conf.d/
sudo rm /usr/lib/arm-linux-gnueabihf/libmicrohttpd.so
sudo cp libmicrohttpd.so.12.37.0 /usr/lib/arm-linux-gnueabihf/
sudo ln -s /usr/lib/arm-linux-gnueabihf/libmicrohttpd.so.12.37.0 /usr/lib/arm-linux-gnueabihf/libmicrohttpd.so.12
sudo ln -s /usr/lib/arm-linux-gnueabihf/libmicrohttpd.so.12 /usr/lib/arm-linux-gnueabihf/libmicrohttpd.so
chmod 777 join reset zbclient

PI3:

