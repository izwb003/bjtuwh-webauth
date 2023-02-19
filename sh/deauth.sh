#!/bin/sh

#This script do deauth work and make your device disconnects to the school network.


#Set IP
myip=$(ifconfig wlan0 | grep 'inet addr:' | grep -oE '([0-9]{1,3}.){3}.[0-9]{1,3}' | head -n 1) #Your Device's IP address 10.255.X.X. Please make your custom change.

#Run
curl "http://10.255.240.99:801/eportal/?c=ACSetting&a=Logout&wlanuserip=${myip}&wlanacip=10.152.0.1&wlanacname=web.wlan&port=&hostname=10.255.240.99&iTermType=1&session=&queryACIP=0&mac=00-00-00-00-00-00&jsVersion=2.4.3" -X POST -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/110.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8" -H "Accept-Language: zh-CN,zh;q=0.8,zh-TW;q=0.7,zh-HK;q=0.5,en-US;q=0.3,en;q=0.2" -H "Accept-Encoding: gzip, deflate" -H "Content-Type: application/x-www-form-urlencoded" -H "Content-Length: 0" -H "Origin: http://10.255.240.99" -H "Connection: keep-alive" -H "Referer: http://10.255.240.99/" -H "Upgrade-Insecure-Requests: 1"