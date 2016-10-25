#!/bin/sh
sudo supervisorctl stop zbclient
sudo rm /etc/supervisor/conf.d/card_reader_adaptor.conf
sudo rm /etc/supervisor/conf.d/zbclient.conf
sudo cp card_reader_adaptor.conf /etc/supervisor/conf.d/
sudo rm /usr/lib/arm-linux-gnueabihf/libmicrohttpd.so
sudo rm /usr/lib/arm-linux-gnueabihf/libmicrohttpd.so.12
sudo cp libmicrohttpd.so.12.37.0 /usr/lib/arm-linux-gnueabihf/
sudo ln -s /usr/lib/arm-linux-gnueabihf/libmicrohttpd.so.12.37.0 /usr/lib/arm-linux-gnueabihf/libmicrohttpd.so.12
sudo ln -s /usr/lib/arm-linux-gnueabihf/libmicrohttpd.so.12 /usr/lib/arm-linux-gnueabihf/libmicrohttpd.so
chmod 777 join reset zbclient
sudo cp zbclient /usr/bin
sudo cp she.wav /home/pi
sudo cp che.wav /home/pi
sudo cp alarm.wav /home/pi
sudo rm -rf .git
sudo supervisorctl start zbclient
