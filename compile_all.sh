#!/bin/bash
shopt -s globstar
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

cd "$parent_path"
for f in **/compile.sh
do
    echo "Running $f..."
    bash $f
done
