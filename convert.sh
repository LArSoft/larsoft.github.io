#!/bin/bash

#  * pandoc -f html -t markdown -s ../wiki2/Quick_Links -o Quick_Links.md
#        "--no-wrap",
#        "--smart",
#        "--strict",

################################################################################

prog=${0##*/}

function usage() {
    cat 1>&2 <<EOF
${prog} --help|-h|-\?
${prog}  <input file>
EOF
}


[[ -z "$1" ]] && { echo "Require input file as non-option argument" 1>&2; usage; exit 1; }

input_file=$1
output_file=${input_file}.tmp
short_file=${input_file}.html
final_markdown=${input_file}.md

# strip off header and footer
# <div class="wiki wiki-page">
# <fieldset class="collapsible collapsed hide-when-print">
#[Edit this section](/redmine/projects/larsoft/wiki/LArSoftWiki/edit?section=6)
#/redmine/projects/larsoft/wiki/

#cat ${input_file} | sed -e '1,/<div.id="content">/'d -e '/<div.id="wiki_add_attachment">/,$d' > ${short_file}
#cat ${input_file} | sed -e '1,/<div class="wiki wiki-page">/'d -e '/<div.id="wiki_add_attachment">/,$d' > ${short_file}
cat ${input_file} | sed -e '1,/<div class="wiki wiki-page">/'d -e '/<fieldset class="collapsible collapsed hide-when-print">/,$d' > ${short_file}

# convert
pandoc --no-wrap --smart -f html -t markdown -s ${short_file} -o ${output_file}

cat  ${output_file} | grep -v '\[Edit' | sed -e 's%/redmine/projects/larsoft/wiki/%%'g > ${final_markdown}

exit 0

