#! /bin/bash
cnt=0
for ((i=0;i<=100;i++))
do
 a[i]=$i
done
for i in ${a[@]}
do
   if [ $((${a[i]}%11)) -eq 0 -a ${a[i]} -ne 0 ]
   then
      cnt=$((cnt+1))
      echo ${a[i]}
   fi
done
echo "the count of repeated numbers:$cnt"
