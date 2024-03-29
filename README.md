# Custom Bash Commands

## Purpose

These commands speed up my workflow by shortening the
amount of time I have to spend typing and by 
simplifying repetitive commands.

## Setup

1. Open the bash terminal on your linux machine.
2. In the home directory run
   `touch .custom_bash_commands`.

   > If you're not sure if you're in the home directory
   > run `cd ~`. You may change `custom_bash_commands`
   > to any name you want. This file will hold our
   > functions. Just remember the name of the file as
   > you will need to change all instances of the file
   > name with your own.

3. Now exectute `nano .bashrc`.

   > You may use any text editor but here I will be using
   > nano.

4. At the bottom of the file add this:

   ```sh
   # Source user-defined functions
   if [ -f $HOME/.custom_bash_commands.sh ]; then
      . $HOME/.custom_bash_commands.sh
      echo "Successfully loaded custom commands..."
   fi
   ```

5. You may now open your commands with
   `nano .custom_bash_commands` and paste the commands from
   this repo into it or create your own functions.

6. Now whenever you launch the terminal .bashrc will attempt to
   load .custom_bash_commands. If it can it will let you know
   by outputting "Successfully loaded custom commands...".

   > Side note: you may change the message after `echo` to
   > be whatever you want or omit it completely.

## Functions

---

### examplefunctionname

`example function call`

Description of function and use case.

<details>
   <summary><b>Implementation</b></summary>
   
   ```sh
   # Example description
   function examplefunction {
      do something here
   }
   ```

</details>

---

### cdrepo

`cdrepo github bash custom-bash-commands`

This function likely will not work with your file system as it
is specifically tailored for my system. You should, however, be
able to modify it to suit your purposes. The way my system is
organized I have all my repos stored by their service (github,
gitlab, etc.) in a subdirectory of home/dev. In order to access
them quicker I use `cdrepo` to skip past home/dev and straight
to home/dev/repos and then I'll pass the service, optionally the
subdirectory, and optionally the file itself (e.x
`cdrepo github bash custom-bash-commands`). To modify it simply
replace the directories to whatever is useful for you.

<details>
   <summary><b>Implementation</b></summary>
   
   ```sh
   # Change directory to specific repo
   function cdrepo {
       cd ~/dev/repos/$1/$2/$3
   }
   ```

</details>

### fullgit

Example call: `fullgit "this is a commit message"`

I almost always add, commit, and push at the same time so I put
it all into one command. It's not an original idea but its
super convenient.

<details>
   <summary><b>Implementation</b></summary>
   
   ```sh
   # Complete core git functions simultaneously
   function fullgit {
       git add .
       git commit -m "$1"
       git push origin main
   }
   ```

</details>

### webproj

Example call: `webproj new-project-name git https://valid-remote-origin`

Setting up the basic file structure for a web project is usually
the same. So I created a basic function to do just that and also,
if desired, it can intialize a git repo at the same time. If you
provide a valid remote origin on github it will also set up the
commit and push the initial files.

<details>
   <summary><b>Implementation</b></summary>
   
   ```sh
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
   ```

</details>

### modudef

Example call: `modudef`

On my system the custom bash commands are stored in
.udef_bash_commands and `nano .udef_bash_commands` can be annoying
to type out. So I created a shortcut in this function. Just goes to
show how you can use these commands to make even the simplest
of tasks faster or more convenient.

<details>
   <summary><b>Implementation</b></summary>
   
   ```sh
   # Navigate /home and modify this file
   function modudef {
       cd ~
       nano .udef_bash_commands.sh
   }
   ```

</details>
