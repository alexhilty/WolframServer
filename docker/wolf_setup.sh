#!/bin/bash

# Run Setup Once
while getopts u:p: flag
    do
        case "${flag}" in
            u) username=${OPTARG};;
            p) password=${OPTARG};;
        esac
    done

if test -f "/home/scripts/already_ran"
then
    jupyter notebook --notebook-dir=/home/wolframnotes --ip 0.0.0.0 --allow-root --no-browser --NotebookApp.token='' --NotebookApp.password=''

else
    echo "${username}\n${password}\nExit\n" | wolframscript
    wolframscript /home/scripts/WolframLanguageForJupyter/configure-jupyter.wls add

    touch /home/scripts/already_ran
fi