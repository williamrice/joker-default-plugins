#!/bin/bash

# Navigate to the plugins folder
cd plugins

# Recursively unzip each zip folder inside to a folder of the same name
find . -type f -name "*.zip" -exec wp plugin install {} \;

#remove default plugins
wp plugin uninstall akismet
wp plugin uninstall hello

#activate plugins
wp plugin activate --all

# Navigate to the themes folder
cd ../themes

# Recursively unzip each zip folder inside
find . -type f -name "*.zip" -exec wp theme install {} \;

#uninstall default themes leaving 1 fallback thentytwentyfour
wp theme uninstall twentytwentytwo
wp theme uninstall twentytwentythree

#activate themes
wp theme activate Divi

#cleanup
cd ..
rm -rf repo




