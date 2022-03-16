#!/bin/bash
x=1
while [ $x -le 5 ]
do
  echo "Welcome $x times"
  x=$(( $x + 1 ))
done


#
# Reading data line by line from a file
#

FILE=$1
# read $FILE using the file descriptors
exec 3<&0
exec 0<$FILE
while read line
do
	# use $line variable to process line
	echo $line
done
exec 0<&3



#
# Waiting for input for a script
#

while getopts ae:f:hd:s:qx: option
do
        case "${option}"
        in
                a) ALARM="TRUE";;
                e) ADMIN=${OPTARG};;
                d) DOMAIN=${OPTARG};;
                f) SERVERFILE=$OPTARG;;
                s) WHOIS_SERVER=$OPTARG;;
                q) QUIET="TRUE";;
                x) WARNDAYS=$OPTARG;;
                \?) usage
                    exit 1;;
        esac
done



while :
do
	read -p "Enter two numnbers ( - 1 to quit ) : " a b
	if [ $a -eq -1 ]
	then
		break
	fi
	ans=$(( a + b ))
	echo $ans
done



####
####


    $i = 1;
   $num = 21;

   while ($i < $num)  // stop when $i equals $num
   {
       echo "$i, ";
       $i++;   // increment $i
   }


    $num = 21;

   for ($i = 1; $i < $num; $i++)  // stop when $i equals $num
   {
       echo "$i, ";
   }



   

