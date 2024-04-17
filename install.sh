#!/bin/bash

# Navigate to the plugins folder
cd plugins

# Recursively unzip each zip folder inside to a folder of the same name
find . -type f -name "*.zip" -exec wp plugin install {} \;

# Navigate to the themes folder
cd ../themes

# Recursively unzip each zip folder inside
find . -type f -name "*.zip" -exec wp theme install {} \;

