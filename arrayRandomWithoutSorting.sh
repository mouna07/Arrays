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
firstLargest=${array[0]}
secondLargest=${array[1]}
firstSmallest=${array[0]}
secondSmallest=${array[1]}
for (( j=0;j<9;j++ ))
do
        if [ $firstLargest -lt ${array[j]} ]
        then
                secondLargest=$firstLargest
                firstLargest=${array[j]}
        else
                if [ ${array[j]} -gt $secondLargest -a ${array[j]} -lt $firstLargest ]
                then
                        secondLargest=${array[j]}
                fi
        fi
done
for (( j=0;j<9;j++ ))
do
        if [ $firstSmallest -gt ${array[j]} ]
        then
                secondSmallest=$firstSmallest
                firstLargest=${array[j]}
        else
                if [ ${array[j]} -lt $secondSmallest -a ${array[j]} -gt $firstSmallest ]
                then
                        secondSmallest=${array[j]}
                fi
        fi
done
echo "second largest element is $secondLargest"
echo "second smallest element is $secondSmallest"
