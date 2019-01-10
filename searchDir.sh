#!/bin/bash
if [ "$#" -lt 1 ]
then
	echo "Usage mode: $0 [domain] [wordlist]"
	echo "Example $0 www.domain.com wordlist"
else
	for dir in $(cat $2);
	do
		res=$(curl -s -o  /dev/null -w "%{http_code}" $1/$dir/)

		if [ $res == '200' ]
		then
			echo "Directory founded: $palavra"
		fi
	done
fi
