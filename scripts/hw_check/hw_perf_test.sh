all_letters="a b c d e f g h i j k l"
pscp -h all_hosts.txt fio-baseline-hdd.cfg /tmp
for disk_letter in $all_letters; do
	dev=/dev/sd${disk_letter}
	pssh -h all_hosts.txt env DEVICE=$dev fio /tmp/fio-baseline-hdd.cfg --output fio.res
	cat all_hosts.txt | while read r_host ; do
		scp "root@${r_host}:fio.res" "/tmp/fio-sd${disk_letter}-${r_host}.res"
	done 
done
