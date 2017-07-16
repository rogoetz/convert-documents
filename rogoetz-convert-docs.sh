#!/bin/bash

# Declare input argument as a variable
INPUTFILE=$1
OUTPUTNAME=$(echo -n $INPUTFILE | head -c -3)

#say 'conversion in progress'
echo "conversion in progress"
echo " "

# Convert markdown to HTML
pandoc -o $OUTPUTNAME.html $INPUTFILE

# Convert markdown to DOCX

pandoc -o $OUTPUTNAME.docx $INPUTFILE

# Convert markdown to ODT

pandoc -o $OUTPUTNAME.odt $INPUTFILE

# Convert markdown to PDF

pandoc $INPUTFILE --latex-engine=pdflatex -o $OUTPUTNAME.pdf

#convert markdown to EPUB

pandoc -S $INPUTFILE -o $OUTPUTNAME.epub

# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF

echo "converted $INPUTFILE to HTML, DOCX, ODT, PDF, and EPUB"
echo " "
echo "you now have files: `ls -lah`"