
for file in *; do 
    if [ -f "$file" ] && [ ${file: -2} == ".c" ]; then   
        # Delete file.h (Be sure no file.h)
        rm "${file%.*}".h 2> /dev/null

        # create .h file
        touch "${file%.*}".h

        # Loop to find signature of every function, append them in file.h
        while IFS= read -r line; do
            # Check the starting with "type" and ending with ")"
            if  ([[ $line == "char "* ]] || 
                [[ $line == "short "* ]] || 
                [[ $line == "int "* ]] || 
                [[ $line == "long "* ]] || 
                [[ $line == "float "* ]] || 
                [[ $line == "double "* ]] || 
                [[ $line == "struct "* ]] || 
                [[ $line == "union "* ]] || 
                [[ $line == "enum "* ]] || 
                [[ $line == "char "* ]] || 
                [[ $line == "*short "* ]] || 
                [[ $line == "*int "* ]] || 
                [[ $line == "*long "* ]] || 
                [[ $line == "*float "* ]] || 
                [[ $line == "*double "* ]] || 
                [[ $line == "*struct "* ]] || 
                [[ $line == "*union "* ]] || 
                [[ $line == "*enum "* ]] || 
                [[ $line == "void "* ]]) &&
                ([[ $line == *")" ]] || 
                [[ $line == *"){" ]] ||
                [[ $line == *"){}" ]]) ; then
                echo ${line%'{'*} >> "${file%.*}".h
                echo >> "${file%.*}".h
            fi
        done <$file
    fi 
done