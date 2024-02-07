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
    else
        echo 'git not initialized'
    fi
}

# Modify this file
function modudef {
    cd ~
    nano .udef_bash_commands.sh
}


# Modify this file
function modudef {
    nano .udef_bash_commands.sh
}
