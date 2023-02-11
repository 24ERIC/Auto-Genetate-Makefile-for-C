a="int SocketConnect(int hSocket){}"
if [[ $a == *")" ]] ||
   [[ $a == *"){" ]] ||
   [[ $a == *"){}" ]] ; then
    echo success
fi



