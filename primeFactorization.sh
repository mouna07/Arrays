#! /bin/bash
read -p "enter the number to print prime factors:" num
for (( i=2; i<=$num; i++ ))
do	
        if [ $((num%i)) -eq 0 ]
        then
                isPrime=1
                for (( j=2; j<=$i/2; j++ ))
                do
                        if [ $((i%j)) -eq 0 ]
                        then
                                isPrime=0
                                break
                        fi
                done
                if [ $isPrime -eq 1 ]
                then
                        echo "$i"
                        prime[k]=$i
                        k=$((k+1))
                fi
        fi
done
echo "prime array:${prime[@]}"


