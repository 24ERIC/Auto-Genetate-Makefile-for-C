a="int SocketConnect(int hSocket){}"
if ([[ $a == "int "* ]] || 
    [[ $a == "short "* ]]) && 
    ([[ $a == *")" ]] ||
    [[ $a == *"){" ]] ||
    [[ $a == *"){}" ]]) ; then
    echo success
fi



