#! /bin/bash

# cli for opening pdf's with browser

# set directory where pdf's are stored
DIR="$HOME/documents"
# set browser to open pdf with
BROWSER="google-chrome-stable"

echo "Which directory in $DIR ?"
echo "$(ls $DIR)"

read -e PDF_DIR

echo "Which file?"
echo "$(ls $DIR/$PDF_DIR)"

read -e FILE_NAME

# open pdf with specified browser
$BROWSER $DIR/$PDF_DIR/$FILE_NAME
