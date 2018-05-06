#!/bin/bash
status=`gpio -g read 18`
if [ 0 -eq $status  ];then
	gpio -g write 18 1
else
	gpio -g write 18 0
fi
status=`gpio -g read 18`
echo $status
