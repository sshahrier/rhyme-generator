#!/bin/bash

printf "What is your name? "
read VAR_NAME

exit_program=n

while true;
do
    printf "Hello %s you ready to spit some rhymes with Cam?!\nType in the word that you want to rhyme with and I got you: " $VAR_NAME
        read VAR_RHYMEWORD
        curl -s -X GET "https://api.datamuse.com/words?rel_rhy="$VAR_RHYMEWORD -o rhymes.json
    grep -Po '"word"\s*:\s*"\K[^"]+' rhymes.json
    printf "\nWould you like to exit [y/n]? "
        read exit_program
    if echo "$exit_program" | grep -iq "^y" ;then
       break;
    fi
done

printf "\nExiting Program...\nHave a nice day!\n"
                                            


