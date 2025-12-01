#!/bin/bash

# Add TeX Live to PATH
export PATH="/opt/texlive/bin:$PATH"

mkdir -p build

# Compile IEEE (BibTeX)
echo "[build] Compiling IEEE"
latexmk -g -f -silent -file-line-error -outdir=build -bibtex -xelatex main_ieee.tex

# Compile ACM (BibTeX)
echo "[build] Compiling ACM"
latexmk -g -f -silent -file-line-error -outdir=build -bibtex -xelatex main_acm.tex

# Compile APA7 (biblatex + biber)
echo "[build] Compiling APA7"
latexmk -g -f -silent -file-line-error -outdir=build -xelatex main_apa7.tex

echo "[build] PDFs available in build/"
