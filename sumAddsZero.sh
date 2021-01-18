#! /bin/bash
read -p "enter the number of elements:" n
for ((i=0;i<$n;i++))
do
        read -p "enter the $i th element:" ele
        array[i]=$ele
done
echo ${array[@]}
length=${#array[@]}
echo "length of array:"$length
for i in ${array[@]}
do
  for (( j=i+1;j<$n;j++ ))
  do
    for (( k=j+1;k<$n;K++ ))
    do
      if [ $((${array[i]}+${array[j]}+${array[k]})) -eq 0 ]
      then
          echo "numbers found:${array[i]} , ${array[j]} , ${array[k]}"
      fi
    done
  done
done
