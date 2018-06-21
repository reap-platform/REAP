#!/bin/sh
#used to start server
. env.sh
nohup ${JAVA_HOME}/jre/bin/java -cp ${REAP_HOME}/libs/h2*.jar org.h2.tools.Server &
