[[ $a == z* ]]

if  [[ $HOST == user1 ]] || [[ $HOST == node* ]] ;
then
    echo yes1
fi

for file in *; do 
    if [ -f "$file" ] && [ ${file: -2} == ".c" ]; then   
        # Delete file.h (Be sure no file.h)
        rm "${file%.*}".h 2> /dev/null

        # create .h file
        touch "${file%.*}".h

        # Loop to find signature of every function, append them in file.h
        while IFS= read -r line; do
            if  [[ $line == "int "* ]] || [[ $HOST == node* ]] ;
            then
                echo yes1
            fi
        done <$file.c
    fi 
done