#!/bin/bash

clear
echo "Installing All Google Web Fonts onto your Mac"
echo "Downloading The Fonts..."
cd ~/Documents/
curl -L https://github.com/w0ng/googlefontdirectory/tarball/master -o master.tar.gz
echo "Extracting the fonts..."
mkdir goog-fonts
tar -zxf master.tar.gz -C goog-fonts
cd goog-fonts/qrpike*
mv fonts/* /Library/Fonts/

echo "Fonts Installed, Cleaning Up Files.."
cd ~/Documents/
rm -f master.tar.gz
rm -rf goog-fonts
echo "All Done! All Google Fonts installed."
