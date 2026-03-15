#!/bin/bash

#Copies bash_aliases from the repo to home
cp "$(dirname "$0")/.bash_aliases" "$HOME/.bash_aliases"

#Tells the user to reload their shell
echo "Run 'source ~/.bash_aliases' to activate your new aliases"
