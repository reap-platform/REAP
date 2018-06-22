#!/bin/sh
. env.sh
if [ ! -n "$1" ];then
echo "application id required ,e.g 'start.sh reap-rbac'."
exit
fi
nohup ${JAVA_HOME}/jre/bin/java -Xms32m -Xmx128m  -Dloader.path=${REAP_HOME}/apps/$1/libs,${REAP_HOME}/libs -jar ${REAP_HOME}/apps/$1/$1-*.jar  >/tmp/$1.log  2>&1 &
