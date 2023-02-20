#!/bin/sh

#This script checks if you have internet and do auth work to make your device connects to the school network.

#Set Info
myip=$(ifconfig wlan0 | grep 'inet addr:' | grep -oE '([0-9]{1,3}.){3}.[0-9]{1,3}' | head -n 1)
username=''
password=''

#Run

ping -c 1 baidu.com > /dev/null 2>&1
if [ $? -ne 0 ];then
    echo 'No Internet Connection. Reauthing...'
    curl "http://10.255.240.99:801/eportal/?c=ACSetting&a=Login&protocol=http:&hostname=10.255.240.99&iTermType=1&wlanuserip=${myip}&wlanacip=null&wlanacname=web.wlan&mac=00-00-00-00-00-00&ip=${myip}&enAdvert=0&queryACIP=0&jsVersion=2.4.3&loginMethod=1" -X POST -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/110.0" -H "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8" -H "Accept-Language: zh-CN,zh;q=0.8,zh-TW;q=0.7,zh-HK;q=0.5,en-US;q=0.3,en;q=0.2" -H "Accept-Encoding: gzip, deflate' -H 'Content-Type: application/x-www-form-urlencoded" -H "Origin: http://10.255.240.99" -H "Connection: keep-alive" -H "Referer: http://10.255.240.99/" -H "Upgrade-Insecure-Requests: 1" --data-raw "DDDDD=${username}&upass=${password}&R1=0&R2=0&R6=0&para=00&0MKKey=123456&buttonClicked=&redirect_url=&err_flag=&username=&password=&user="
fi