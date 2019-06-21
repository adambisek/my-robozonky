#!/bin/bash
export JAVA_HOME=""
export JAVA_OPTS="$JAVA_OPTS -Xmx64m -Drobozonky.properties.file=/Users/adambisek/RoboZonky/5.2.5/robozonky.properties -Dcom.sun.management.jmxremote=false -Djmx.remote.x.notification.buffer.size=10 -Dlog4j.configurationFile=/Users/adambisek/RoboZonky/5.2.5/log4j2.xml"
/Users/adambisek/RoboZonky/5.2.5/Dist/robozonky.sh @/Users/adambisek/RoboZonky/5.2.5/robozonky.cli