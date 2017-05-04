#!/bin/sh
check_mem=4.0
check_cpu=4.0
while(true)
do
	cpu_val=0
	mem_val=0
	ps -e -o pmem=,pcpu=,pid=,user=,comm= --sort=-pmem |
	while read size cpu pid user comm
	do
	if [ "$user" = "goku" ]
	then
		cpu_val=$( echo "$size>$check_mem" | bc )
		mem_val=$( echo "$cpu>$check_cpu" | bc )
		if [ "$cpu_val" = 1  ]
		then
			kill $pid
		elif [ "$check_cpu" = 1 ]
		then
			kill $pid 
		else
			continue
		fi
	fi
	done
	sleep 1
done
