THRESHOLD=1.0
echo "================Disk usage of all file systems are printed below=============="
df -kh
echo "===============Memory usage=================="
free -mh 
echo "================Cpu usage=================="
CPU=$(top -b -n 1| grep "Cpu(s)" | awk '{print $2 + $4}')
if (($(echo "$CPU > $THRESHOLD" | bc -l))); then
	echo "=======Threshold exceeded and its $CPU"
else
	echo "Normal cpu usage that is $CPU"
fi
echo "==================current user========="
whoami
