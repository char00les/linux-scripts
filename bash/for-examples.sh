#!/bin/bash

a="dev poc tst prd" 

echo "Using \"a\" as the variable"

for instance in $a; 
do
	echo $instance
done

echo ""

echo "Using \$(echo \$a) as the variable"

for instance in $(echo $a); 
do
	echo $instance
done

echo "simply counter"
for i in {1..10} 
do
	echo $i
done


echo "simply counter"
for i in {1..10..2} 
do
	echo $i
done

echo "A representative three-expression example in bash as follows:"

for (( c=1; c<=5; c++ ))
do  
   echo "Welcome $c times"
done


echo "Infinite for loop can be created with empty expressions, such as:"

#!/bin/bash
#for (( ; ; ))
#do
#   echo "infinite loops [ hit CTRL+C to stop]"
#done

echo "You can do early exit with break statement inside the for loop. You can exit from within a FOR, WHILE or UNTIL loop using break. General break statement inside the for loop:"

for file in /etc/*
do
	if [ "${file}" == "/etc/resolv.conf" ]
	then
		countNameservers=$(grep -c nameserver /etc/resolv.conf)
		echo "Total  ${countNameservers} nameservers defined in ${file}"
		break
	fi
done

echo "Show array Elements"

DB_AWS_ZONE=('us-east-2a' 'us-west-1a' 'eu-central-1a')
 
for zone in "${DB_AWS_ZONE[@]}"
do
  echo "Creating rds (DB) server in $zone, please wait ..."
done
