#!/bin/bash
process_name="cron"
profunc()
{
systemctl is-active $process_name
}
process1=$(profunc)
if [ "$process1" == "active" ] ; then
	echo "$process_name is active and running"
else
	echo "$process_name is down restarting it now"
	sudo systemctl start $process_name
	sleep 10
	process1=$(profunc)
	if [ "$process1" == "active" ] ; then
		echo "$process_name is up and running"
	else
		echo "Failed to restart $process_name"
	fi

fi
