#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

cd "$parent_path"
mkdir -p ../../output
#pandoc -f markdown -t pdf -o ../../output/template.pdf --template ../../template/eisvogel.latex --listings <(cat *.md)
