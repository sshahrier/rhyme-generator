# Rhyme Generator

![rhyme_generator](https://user-images.githubusercontent.com/23084941/47628270-27950180-db0b-11e8-887b-8dcd080c2e91.jpg)

## Project Description

User is prompted to enter their word of choosing and the system parses out to a json file to and utilizes the API to generate over one-hundred rhyming words and user has the ability to continue with new words to rhyme or quit out of the final loop of the program

### Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

There are no installation of packages required for this project. 

### Instructions 

After setting up your file folder structure, run the script and the JSON file will be created after runtime and you can see the API working in place with our input/output of the program and the word we selected from the user.

## List of Commands Used

We use the `curl` to call and get data from the API and once this is fetched it is then stored to our json file

```
curl -s -X GET "http://api.datamuse.com/words?rel_rhy="VAR_RHYMEWORD -o rhymes.json
```

In another instance we used the `grep` command in order to parse the JSON file.

```
grep -Po '"word"\s*:\s*"\K[^"]+' rhymes.json
```

Our basic commands include reading in user input using the `read` command from Linux. To print to console we used the `printf` command.

```
read VAR_NAME

printf "Hello %s" $VAR_NAME
```

Here is a few examples of our API JSON format after a word has been selected in this case `cheerful`

```
[{"word":"fretful","score":427,"numSyllables":2},{"word":"regretful","score":316,"numSyllables":3},{"word":"threatful","score":133,"numSyllables":2},{"word":"netful","score":29,"numSyllables":2},{"word":"let phil","numSyllables":2},{"word":"met phil","numSyllables":2},{"word":"set fill","numSyllables":2}]
```

## References

* [DataMuse](http://www.datamuse.com/api/) - A Datamuse API which is a word-finding engine used to match based on a set of rules. 
* [Ask Ubuntu](https://askubuntu.com/questions/863865/regex-with-sed-command-to-parse-json-text) - A regex (regular expression) used to parse the JSON data format.

