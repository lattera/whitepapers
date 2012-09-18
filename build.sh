#!/bin/sh -e

cd $(dirname ${0})

papers="runtime_process_infection"

if [ ! -d papers ]; then
    mkdir papers
fi

for paper in $papers; do
    cd $paper
    pdflatex $paper.tex
    cd ..
    cp $paper/$paper.pdf papers
done
