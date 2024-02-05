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

# Modify this file
function modudef {
    nano .udef_bash_commands.sh
}
