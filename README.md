# googlefontdirectory

This is __UNOFFICIAL MIRROR__ of [Google 
Fonts](http://code.google.com/p/googlefontdirectory/) that contains only the
relevant `*.ttf` files that end users need to use the fonts.

## About 

Created for easier access to all of Google Fonts, with a smaller download
size compared with using Google's official repository (100MB vs 2 GB).

### Installation

Install these fonts the same way as you would with any other font. Copy the 
desired fonts to your system's font directory. Grab all the fonts in a 
compressed format by downloading one of these: 

-   *.zip: https://github.com/w0ng/googlefontdirectory/zipball/master
-   *.tar.gz: https://github.com/w0ng/googlefontdirectory/tarball/master

## Background

Presently, there is no quick method for users to install all the fonts from 
Google's official mercurial repository.

In order to install from the official method, users are required to clone and
pull updates from Google's hg repo (~2GB).

This repository mirrors that repo, but only contains the web font files
(`*.ttf`) along with the relevant license (`*.txt`) and metadata (`*.json`)
files, by periodically updating the hg repo and executing:

    rsync -rv --delete --prune-empty-dirs \
    --exclude='.hg' \
    --exclude='designers' \
    --exclude='tools' \
    --exclude='src' \
    --include='*/' \
    --include='*.ttf' \
    --include='*.json' \
    --include='*.txt' \
    --exclude='*' \
    googlefonts-hg/* googlefonts-git/googlefontdirectory
