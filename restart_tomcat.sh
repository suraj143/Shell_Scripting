#!/bin/bash
ptest=$(ps -ef | grep tomcat | grep -v grep | awk '{print $2}')
pid=$(ps -ef | grep tomcat | grep -v grep )
base=/opt/apache-tomcat-8.0.39/bin

#echo "thefile: $pid"
#echo $ptest

case $1 in 
start)
if [ $ptest -gt 0 ]; 
then
echo "CASESTART Tomcat is running with the process id:$ptest"
#echo $pid
else
echo "Tomcat is not running we are bringing up tomcat"
$base/startup.sh 2>$1  > /dev/null
fi
;;
stop)
if [ $ptest -gt 0 ];
then
echo "CASESTOP Tomcat is running with the process id :$ptest"
$base/shutdown.sh  2>$1  >  /dev/null 
#echo $pid
else
echo "Tomcat is going to down"
$base/shutdown.sh  2>$1  >  /dev/null
kill -9 $ptest 2>$1 > /dev/null
fi
;;
restart)
if [ $ptest -gt 0 ];
then
$base/shutdown.sh 2>$1 > dev/null
kill -9 $ptest 2>$1 > dev/null
echo "tomcat is restarting"
$base/startup.sh 2>$1 > /dev/null
#echo $pid
fi
;;
*)
echo "usage: $0 {start|stop|restart}"
esac
