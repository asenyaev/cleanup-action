#!/bin/bash -e

# Remove all files except hidden files
rm -rf ./*
# Remove all hidden files that have a dot as first character, including the .git folder
rm -rf ./.??*
