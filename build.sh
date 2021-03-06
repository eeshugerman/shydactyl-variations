#!/usr/bin/env bash
set -eux

tridactyl_commit='ca6f949f3413c8c23551fabcaf5782491d0dbd2d'
shydactyl_url="https://raw.githubusercontent.com/tridactyl/tridactyl/${tridactyl_commit}/src/static/themes/shydactyl/shydactyl.css"
shydactyl_src="$(curl --silent $shydactyl_url)"

shydactyl='tridactyl/src/static/themes/shydactyl/shydactyl.css'
icons='tweaks/icons.css'
dark='tweaks/dark.css'


build_variation() {
    local -r tweaks=$1

    local -r outfile="dist/shydactyl-${tweaks// /-}.css"

    echo '/* THIS FILE IS GENERATED BY A SCRIPT. DO NOT EDIT MANUALLY. */' > $outfile
    echo '' >> $outfile

    echo '/* ------------ begin shydactyl (base) ------------ */' >> $outfile
    echo "$shydactyl_src" >> $outfile
    echo '' >> $outfile
    echo '/* ------------- end shydactyl (base) ------------- */' >> $outfile
    echo '' >> $outfile

    for tweak in $tweaks; do
        tweakfile="tweaks/${tweak}.css"
        echo "/* ------------- begin $tweak ------------------ */" >> $outfile
        cat $tweakfile >> $outfile
        echo "/* ------------------ end $tweak ------------------- */" >> $outfile
        echo '' >> $outfile
    done
}


build_variation 'favicons'
build_variation 'all-icons'

build_variation 'dark'
build_variation 'favicons dark'
build_variation 'all-icons dark'
