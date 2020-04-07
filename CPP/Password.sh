#program
echo "Enter Username : "
read name
echo "Enter Password : "
read pass
let flag=0 #flag to see if correct user/pass was found 
file="/home/daniyal/Desktop/Shell/pass.txt" #file path

caps=$(echo $pass | grep -c "[A-Z]")
smol=$(echo $pass | grep -c "[a-z]")
nums=$(echo $pass | grep -c "[0-9]")

if (("$caps+$smol"<="4"&&"$nums"<="4"))
    then
    while ifs=: read -r f1 f2
        do
        #printf 'name: %s,pass: %s' "$f1" "$f2" 
        if [[ "$f1" == "$name" ]] && [[ "$f2" == "$pass" ]]
            then
            flag=$((flag+1))
            break
        fi

    done < "$file"

    if [ "$flag" -eq "1" ] #if correct user is found 
        then
        echo "Access Granted"
    fi


else #else not printing atm
echo "Access Denied invalid username or password"
fi

