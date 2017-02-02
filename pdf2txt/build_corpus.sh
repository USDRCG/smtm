#!/bin/bash

echo "converting PDFs to TXT"
find ../data/SPMT_Journals -iname "*.pdf" -exec pdftotext {} \; >log.txt 2>&1

echo "Building corpus"
find ../data/SPMT_Journals -iname "*.txt" -exec cat {} >>../data/corpus.txt \; >>log.txt 2>&1

echo "Done!"

