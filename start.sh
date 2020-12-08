current=`date "+%Y-%m-%d %H:%M:%S"`  
timeStamp=`date -d "$current" +%s`   
if [ -s startdate ];then
    datevale=`cat startdate`
    s1=$((${timeStamp}-${datevale}))
    s2=1123200
    if [ $s1 -gt $s2 ];then
	find / -name navicat 2>/dev/null|grep "/.config/"|awk {'print $1'} | xargs rm -fr
        echo ${timeStamp}>startdate
	echo "超过试用期,启动软件后需要重新导入连接文件connect！"
    else
	echo "试用期内,正常启动使用！"
    fi
else
    echo ${timeStamp}>startdate
fi    
nohup ./navicat15-premium-cs.AppImage >/dev/null 2>&1 &
