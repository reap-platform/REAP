#!/bin/sh
#used to init db
. env.sh
${JAVA_HOME}/jre/bin/java -cp ${REAP_HOME}/libs/h2*.jar org.h2.tools.RunScript -url "jdbc:h2:tcp://localhost/~/REAPDB;AUTO_SERVER=TRUE" -user "reap" -password "reap" -script "${REAP_HOME}/database/ddl.sql"
${JAVA_HOME}/jre/bin/java -cp ${REAP_HOME}/libs/h2*.jar org.h2.tools.RunScript -url "jdbc:h2:tcp://localhost/~/REAPDB;AUTO_SERVER=TRUE" -user "reap" -password "reap" -script "${REAP_HOME}/database/init.sql"
