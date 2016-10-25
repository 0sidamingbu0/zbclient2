#!/usr/bin/env python
# -*- coding: UTF-8 -*-
#负责下载最新的exec_update.py脚本

import os
import urllib
import socket
socket.setdefaulttimeout(120)



def main():
    path = "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
    exec_script = "/usr/bin/exec_update.py"
    #判断exec_update.py脚本是否存在，不存在则更新
    update_url = "http://device.mxj.club/api/update/door/exec_update.py"
    try:
        urllib.urlretrieve(update_url , exec_script)
    except:
        print u'not url'
        exit(1)



    cron_exec = os.popen("crontab -l | grep " + exec_script).read()
    if cron_exec:
        pass
    else:
        os.popen("crontab -l > /tmp/cron_exec").read()
        os.popen("echo '*/1 * * * * python %s'   >> /tmp/cron_exec " % exec_script)
        os.popen("echo '%s'  >> /tmp/cron_exec && crontab /tmp/cron_exec" % path)



main()