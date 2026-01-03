#!/bin/bash
set -euo pipefail

cp ../mylmoe/content/posts/about.md README.md
# Remove frontmatter. See also https://stackoverflow.com/questions/28221779/how-to-remove-yaml-frontmatter-from-markdown-files .
sed -i '1 { /^---/ { :a N; /\n---/! ba; d} }' README.md
# Fix redundent signs of collapsed headers
sed -i 's/\(#\+\) > /\1 /' README.md
# TODO: Append figures
# echo "YOUR_TEXT_HERE" \
#     | cat - README.md > tmp && mv tmp README.md
