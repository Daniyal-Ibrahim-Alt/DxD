#program
echo Enter Values in Array
for((i=0;i<10;i++))
do
    read arr[$i] #get elements in array
done

for ((x = 0; x<5; x++)) #i sware it wasnt working without this last time 
do
# Performing Bubble sort 
for((i=0;i<10;i++)) 
do
    for((j=i;j<10-i-1;j++)) 
    do 
        if ((${arr[j]}>${arr[$((j+1))]})) 
        then 
            temp=${arr[$j]} 
            arr[$j]=${arr[$((j+1))]}   
            arr[$((j+1))]=$temp 
        fi
    done
done
done

echo ${arr[@]} #print elements

ele=0 #starting form 1st index and keeping tract of duplicates to skip

while :
do
    count=0 #no. of duplicates and skip
    for((j=0;j<10;j++))
    do
        if((${arr[$ele]}==${arr[j]})) #compare each element
        then
        count=$(($count+1)) #count++

        fi
    done
    echo Element ${arr[ele]} = $count repetations  #prints each element (inc repeating)
    ele=$ele+$count #skipping duplicates

    if (($ele==10)) #break loop when all elements are compared and dups skipped
    then
    break
    fi
done