# googlefontdirectory

This is mirror of [Google Web
Fonts](http://code.google.com/p/googlefontdirectory/) that contains only the
relevant *.ttf files that end users need to use the fonts.

## About 

Created for easier access to all of Google's Web Fonts, with a smaller download
size (~60 MB) compared with using Google's official repository (~2 GB).

### Installation

Install these fonts the same way as you would with any other font. Copy the 
desired fonts to your system's font directory. Grab all the fonts in a 
compressed format by downloading one of these: 

-   *.zip: https://github.com/w0ng/googlefontdirectory/zipball/master
-   *.tar.gz: https://github.com/w0ng/googlefontdirectory/tarball/master

## Background

Presently, there is no quick method for users to install all the fonts from 
Google's official mercurial repository.

In order to install from the official method, the general instructions are:

1.  Clone Google's hg repository (~2GB in size)

2.  Traverse through a 3-level deep directory structure to find a relevant
    *.ttf file.

        googlefontdirectory
        |-- apache
        |   |-- aclonica
                |-- Aclonica.ttf
                ...

3.  Copy the file to your system's font directory.

4.  Repeat the previous steps for each of the ~1000 Google Web Fonts in
    googlefontdirectory.

Whilst steps 2-4 can be completed in one step (.e.g. using `find` in Linux), 
users are still required to keep the 2GB repository lying around to pull any
updates and copy the changes over.

This repository is created and updated doing exactly that, i.e:

    cd googlefonts-hg && hg pull --update && cd ..
    find googlefonts-hg -maxdepth 3 -type f -name \*.ttf -exec rsync -a {} googlefonts-git/fonts \;
