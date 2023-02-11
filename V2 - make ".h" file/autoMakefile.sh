#!/bin/bash


# Delete Makefile (Be sure no Makefile)
rm Makefile 2> /dev/null

# Make Makefile
touch Makefile

names=() # store the name of ".c" file, without ".c"
i=0 # Index of names array

# Fill out names first
for file in *; do 
    if [ -f "$file" ] && [ ${file: -2} == ".c" ]; then         
        names[$i]="${file%.*}"
        ((i++))
    fi 
done


i=0 # Reset index of names array to 0

for file in *; do 
    if [ -f "$file" ] && [ ${file: -2} == ".c" ]; then   
        # Delete file.h (Be sure no file.h)
        rm "${file%.*}".h 2> /dev/null

        # create .h file
        touch "${file%.*}".h

        # Loop to find signature of every function, append them in file.h
        while IFS= read -r line; do
            echo "`ls *.c, *.h | sls "^(\w+( )?){2,}\([^!@#$+%^]+?\)"`"
        done <client.c
    fi 
done







# start
echo "all:" ${names[@]} >> Makefile
echo >> Makefile


# middle
for name in ${names[@]}; do
    echo $name":" $name".o" >> Makefile
	echo -e '\t'"gcc -o" $name $name".o" >> Makefile
    echo >> Makefile
    echo $name".o:" $name".c" >> Makefile
	echo -e '\t'"gcc -c" $name".c" >> Makefile
    echo >> Makefile 
done



# end
echo "clean:" >> Makefile
echo -e '\t'"rm -f *.o" ${names[@]} >> Makefile
# for i in "${!foo[@]}"; do 
#   echo "%s\t%s\n" "$i" "${foo[$i]}"
# done

