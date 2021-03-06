#!/bin/sh

PROJECTS="Xcode Ninja"

for n in $PROJECTS
do
    echo Generating Build Files for $n
    build_dir="build-$n"
    if [ ! -d $build_dir ]; then
        mkdir $build_dir
    fi
    (cd $build_dir && cmake -G $n ..)
    echo
done
