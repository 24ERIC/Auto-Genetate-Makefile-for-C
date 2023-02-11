#!/bin/bash

# reset file
echo > Makefile

# names store all the c extension file name
names=()
i=0
for file in *; do 
    if [ -f "$file" ] && [ ${file: -2} == ".c" ]; then         
        names[$i]="${file%.*}"
        ((i++))
    fi 
done


# create make file
touch Makefile


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