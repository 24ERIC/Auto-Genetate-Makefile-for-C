# Auto-Genetate-Makefile-for-C

# User Story (Idea)

Deb.11 2023, Eric is curently learning c language, and Eric learn by creating things, by testing many c scripts. Every time Eric need to create a Makefile for the testing which really repetitive and wasting time. Therefore, this project can provide Eric the best experience on learning and testing c scripts.

# Details

This project automaticly geenrate Makefile and files with ".h" extension for developer in order to save developers' time during testing and creating new thing. In other words, developers use the porject can save dramatically to work on creative and amazing ideas instead of wasting time on boring testing. 

# Note during using this project

Be aware of that the project does not take care the "include" file, and the file "makeMakefile.sh" must be inside the target folder (folder with many ".c" files) during running "bash makeMakefile.sh".

# How to use it?
```Bash
  git clone ...
  mv makeMakefile.sh "inside target foler"
  bash makeMakefile.sh 
```


# Emoj
- ❌
- ✅
- 😎


# Development Plan

1. ✅make Make file
1. ✅make ".h" file
1. ❌include "include" file
1. ❌multiple directory in option



# Research - [Bash script note](https://devhints.io/bash)

<!-- Conditionals  -->
``` Bash
if [[ -z "$string" ]]; then
    echo "String is empty"
elif [[ -n "$string" ]]; then
    echo "String is not empty"
fi
```

<!-- string quote -->
```Bash
name="John"
echo "Hi $name"  #=> Hi John
echo 'Hi $name'  #=> Hi $name
```

<!-- Shell execution -->
```Bash
echo "I'm in $(pwd)"
echo "I'm in `pwd`"
```

<!-- Strict mode -->
```Bash
set -euo pipefail
IFS=$'\n\t'
```

<!-- Variables -->
```Bash
name="John"
echo $name  # see below
echo "$name"
echo "${name}!"
```

<!-- Generally quote your variables unless they contain wildcards to expand or command fragments. -->
```Bash
wildcard="*.txt"
option="iv"
cp -$options $wildcard /tmp
```

<!-- Functions -->
```Bash
get_name() {
  echo "John"
}

echo "You are $(get_name)"
```

<!-- Brace expansion -->
```Bash
echo {A,B} 	    #Same as A B
echo {A,B}.js 	#Same as A.js B.js
echo {1..5} 	#Same as 1 2 3 4 5
echo {1..5..2} 	#1 3 5
```

<!-- comment -->
```Bash
# Single line comment

: '
This is a
multi line
comment
'
```

<!-- Substrings -->
```Bash
foo="012345"
echo ${foo:0:3} 	#Substring (position, length) -> p12
echo ${foo:(-3):3} 	#Substring from the right -> 345
```

<!-- Length -->
```Bash
foo="123456"
echo ${#foo} #->6
```

<!-- Default values -->
```Bash
${foo:-val} 	    #$foo, or val if unset (or null)
${foo:=val} 	    #Set $foo to val if unset (or null)
${foo:+val} 	    #val if $foo is set (and not null)
${foo:?message} 	#Show error message and exit if $foo is unset (or null)
# Omitting the : removes the (non)nullity checks, e.g. ${foo-val} expands to val if unset otherwise $foo.

```

<!-- Raising errors -->
```Bash
myfunc() {
  return 0
}

if myfunc; then
  echo "success" # 0-success
else
  echo "failure" # 1-success
fi
```

<!-- String condition -->
```Bash
[[ -z STRING ]] 	    #Empty string
[[ -n STRING ]] 	    #Not empty string
[[ STRING == STRING ]] 	#Equal
[[ STRING != STRING ]] 	#Not Equal
[[ NUM -eq NUM ]] 	    #Equal
[[ NUM -ne NUM ]] 	    #Not equal
[[ NUM -lt NUM ]] 	    #Less than
[[ NUM -le NUM ]] 	    #Less than or equal
[[ NUM -gt NUM ]] 	    #Greater than
[[ NUM -ge NUM ]] 	    #Greater than or equal
[[ STRING =~ STRING ]] 	#Regexp
(( NUM < NUM )) 	    #Numeric conditions
[[ -o noclobber ]] 	    #If OPTIONNAME is enabled
[[ ! EXPR ]] 	        #Not
[[ X && Y ]] 	        #And
[[ X || Y ]] 	        #Or
```

<!--  -->
```Bash

```

<!-- Array -->
```Bash
Fruits=('Apple' 'Banana' 'Orange')

Fruits[0]="Apple"
Fruits[1]="Banana"
Fruits[2]="Orange"
```

<!-- Array operation -->
```Bash
Fruits=("${Fruits[@]}" "Watermelon")    # Push
Fruits+=('Watermelon')                  # Also Push
Fruits=( "${Fruits[@]/Ap*/}" )          # Remove by regex match
unset Fruits[2]                         # Remove one item
Fruits=("${Fruits[@]}")                 # Duplicate
Fruits=("${Fruits[@]}" "${Veggies[@]}") # Concatenate
lines=(`cat "logfile"`)                 # Read from file
```

<!--  -->
```Bash


echo "${Fruits[0]}"           # Element #0
echo "${Fruits[-1]}"          # Last element
echo "${Fruits[@]}"           # All elements, space-separated
echo "${#Fruits[@]}"          # Number of elements
echo "${#Fruits}"             # String length of the 1st element
echo "${#Fruits[3]}"          # String length of the Nth element
echo "${Fruits[@]:3:2}"       # Range (from position 3, length 2)
echo "${!Fruits[@]}"          # Keys of all elements, space-separated
```

<!-- iteration -->
```Bash
for i in "${arrayName[@]}"; do
  echo "$i"
done
```

<!-- dictionary -->
```Bash
declare -A sounds

sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"
```

<!-- Working with dictionaries -->
```Bash
echo "${sounds[dog]}" # Dog's sound
echo "${sounds[@]}"   # All values
echo "${!sounds[@]}"  # All keys
echo "${#sounds[@]}"  # Number of elements
unset sounds[dog]     # Delete dog
```

<!-- Iterate over values -->
```Bash
for val in "${sounds[@]}"; do
  echo "$val"
done
```

<!-- Iterate over keys -->
```Bash
for key in "${!sounds[@]}"; do
  echo "$key"
done
```

