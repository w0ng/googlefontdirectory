README
Andika v1.000
========================

This file describes the Graphite source files included with the Andika font family. This information should be distributed along with the Andika fonts and any derivative works.

As a reminder: these source files are Copyright (c) 2004-2011 SIL International (http://www.sil.org/),
with Reserved Font Names "Andika" and "SIL".
This Font Software is licensed under the SIL Open Font License, Version 1.1.
            
font.gdl              - definition of glyphs and glyph classes; auto-generated from the font
main.gdh              - bulk of Graphite rules and extra definitions to support them
features.gdh          - feature and language-feature definitions
pitches.gdh           - rules and definitions to support tone ligatures
pua.gdh               - mapping from PUA pseudo-glyphs to real Unicode glyphs
takes_lowProfile.gdh  - definitions to support low-profile feature; auto-generated
fontSpecific.gdh      - font-specific definition for Andika
stddef.gdh            - standard GDL abbreviations

In order to modify the Graphite tables in this font:
* Strip out the existing tables
  Using the Font-TTF-Scripts package ( http://scripts.sil.org/FontUtils ), you could use something like:
    ttftable -delete graphite old-font-with-Graphite-tables.ttf  new-font-without-Graphite-tables.ttf 
* Run:
    grcompiler -d -v2 -n2048 -w3521 -w510 font.gdl ttf-file-with-Graphite-tables-stripped.ttf output-ttf.ttf
    