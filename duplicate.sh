#!/bin/bash
if [ $(pgrep -f tomcat |wc -l ) -gt 1  ]; then
kill $(pgrep -f tomcat|grep -v $(pgrep -of tomcat ) |sort -n |uniq | awk `{printf $1" "}` );
fi
