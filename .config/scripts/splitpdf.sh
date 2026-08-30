#!/bin/bash
function splitpdf() {
    if [[ "$1" == *.pdf ]]; then
        PDFNAME="$(printf "%s" "$1" | sed 's/\.pdf$//')"
        mkdir $PDFNAME
        mv $1 $PDFNAME
        cd $PDFNAME
        pdfseparate "$1" $PDFNAME-%d.pdf
        cd ..
    else
        echo "Input needs to be a pdf"
    fi
}
