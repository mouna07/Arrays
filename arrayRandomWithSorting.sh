#! /bin/bash
for (( i=0; i<=9; i++ ))
do
        a=$((RANDOM%1000))
        if [ $a -lt 99 ]
        then
                array[i]=$(($a +99))
        else
                array[i]=$a
        fi

done
echo ${array[@]}

for (( i=0;i<10;i++ ))
do
  for (( j=i+1;j<10;j++ ))
  do
    if [ ${array[i]} -gt ${array[j]} ]
    then
        temp=${array[i]}
        array[$i]=${array[j]}
        array[$j]=$temp
    fi
  done
done
echo "sorted array:${array[@]}"
echo "second largest element is ${array[8]}
echo "second smallest element is ${array[1]}
