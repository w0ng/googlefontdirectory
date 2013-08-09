#!/bin/bash

clear
echo "Installing All Google Web Fonts onto your Mac"
echo "Downloading The Fonts..."
cd ~/Documents/
curl -L -O https://codeload.github.com/qrpike/googlefontdirectory/legacy.tar.gz/master -# -o master.tar.gz
echo "Extracting the fonts..."
mkdir goog-fonts
tar -zxf master.tar.gz -C goog-fonts
cd goog-fonts/qrpike*
mv fonts/* /Library/Fonts/

echo "Fonts Installed, Cleaning Up Files.."
cd ~/Documents/
rm -f master.tar.gz
echo "All Done! All Google Fonts installed."
