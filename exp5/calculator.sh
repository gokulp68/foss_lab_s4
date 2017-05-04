#!/bin/sh
clear
sum=0
i="y"
while [ "$i" ==  "y" ];
do
	echo -e "1.ADDITION\n2.SUBTRACTION\n3.MULTIPLICATION\n4.DIVISION\n5.MODULUS\n6.EXIT"
	read ch
	case $ch in
		1)
		echo -e "ENTER NUMBER ONE\n"
        	read a
        	echo -e "ENTER SECOND NUMBER\n"
	        read b
	       	sum=$[ $a + $b ]
		echo "sum = $sum "
		;;
        	2)
		echo -e "ENTER NUMBER ONE\n"
        	read a
        	echo -e "ENTER SECOND NUMBER\n"
	        read b
		sum=$[ $a - $b ]
		echo "difference= $sum"
		;;
		3)
		echo -e "ENTER NUMBER ONE\n"
        	read a
        	echo -e "ENTER SECOND NUMBER\n"
	        read b
		sum=$[ $a * $b ]
		echo "answer is= $sum"
		;;
		4)
		echo -e "ENTER NUMBER ONE\n"
        	read a
        	echo -e "ENTER SECOND NUMBER\n"
	        read b

		if [ $b == 0 ]
		then
			echo "DIVISION NOT DEFINED"
		else
			sum=`echo $a/$b|bc -l`
			echo "answer= $sum"
		fi
		;;
		5)
		echo -e "ENTER NUMBER ONE\n"
        	read a
        	echo -e "ENTER SECOND NUMBER\n"
	        read b
		sum=$[ $a % $b ]
		echo "answer is = $sum"
		;;
		6)
		exit
		;;
		*)
		echo "INVALID SELCTION"
		;;
	esac
	echo "do u want to continue Y OR N"
	read i
done

