a="int SocketConnect(int hSocket)"

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
    echo success
fi

