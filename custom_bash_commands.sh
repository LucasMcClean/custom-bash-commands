#!/bin/bash

# Change directory to specific repo
function cdrepo {
    cd ~/dev/repos/$1/$2/$3
}

# Complete core git functions simultaneously
function fullgit {
    git add .
    git commit -m "$1"
    git push origin main
}

# Create and optionally initialize a web project
function webproj {
    mkdir $1
    cd $1
    touch index.html
    mkdir images
    mkdir scripts
    mkdir styles
    if [[ "$2" = "git" ]]; then
        git init
        if [[ -n "$3" ]]; then
            git remote add origin $3
            git branch -M main
            git add .
            git commit -m "initial files"
            git push -u origin main
        else
            echo "failed to add origin"
        fi
    else
        echo 'git not initialized'
    fi
}

# Navigate /home and modify this file
function modudef {
    cd ~
    nano .udef_bash_commands.sh
}
