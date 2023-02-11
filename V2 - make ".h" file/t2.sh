a="int SocketConnect(int hSocket)"

# Check the starting
if  [[ $a == "char "* ]] || 
    [[ $a == "short "* ]] || 
    [[ $a == "int "* ]] || 
    [[ $a == "long "* ]] || 
    [[ $a == "float "* ]] || 
    [[ $a == "double "* ]] || 
    [[ $a == "struct "* ]] || 
    [[ $a == "union "* ]] || 
    [[ $a == "enum "* ]] || 
    [[ $a == "char "* ]] || 
    [[ $a == "*short "* ]] || 
    [[ $a == "*int "* ]] || 
    [[ $a == "*long "* ]] || 
    [[ $a == "*float "* ]] || 
    [[ $a == "*double "* ]] || 
    [[ $a == "*struct "* ]] || 
    [[ $a == "*union "* ]] || 
    [[ $a == "*enum "* ]] || 
    [[ $a == "void "* ]] || ; then
    
    # Check the ending
    if [[ $a == *")" ]] ||
       [[ $a == *"){" ]] ||
       [[ $a == *"){}" ]] ; then
        echo success
    fi
    echo success
fi



/
/
/
/long




