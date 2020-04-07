#program
echo "Enter a number "
read num

f1=0   
f2=1
fn=0  
   
echo "The Fibonacci series is : "
   
while [ "$fn" -le "$num" ] #print while fn != num
do
    echo -n "$f1 "
    fn=$((f1 + f2)) 
    f1=$f2 
    f2=$fn 
done
echo "done "