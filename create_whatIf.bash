#!/bin/bash
# Author:      Alex Huft
# Date:        25-07-2022 (July 25th, 2022)
# Description: create new directory structure for a 'what if problem'

new_problem=$1
problem_solvers=("Alex" "Diego")


if [ -d $new_problem ]; then
    echo "${new_problem} already exists"
    exit 1
fi

/bin/mkdir $new_problem

pushd $new_problem >> /dev/null

/bin/touch README.md

for user in ${problem_solvers[@]}; do
    /bin/mkdir $user
    pushd $user >> /dev/null
    /bin/touch main.ipynb
    popd >> /dev/null
done