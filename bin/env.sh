#!/bin/sh
#used to set base environment
work_path=`dirname $0`
cd $work_path
cd ..
REAP_HOME=`pwd`
export REAP_HOME
