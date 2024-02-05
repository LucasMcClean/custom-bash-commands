# Custom Bash Commands

### Purpose
These commands speed up my workflow by shortening the
amount of time I have to spend typing and abstracting
common processes.

### Setup
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

   ```
   # Source user-defined functions
   if [ -f $HOME/.custom_bash_commands.sh ]; then
      . $HOME/.custom_bash_commands.sh
      echo "Successfully loaded custom commands..."
   fi
   ```

5. You may now open your commands with
   `nano .custom_bash_commands` and paste the commands from
   this repo into it or create your own functions.

7. Now whenever you launch the terminal .bashrc will attempt to
   load .custom_bash_commands. If it can it will let you know
   by outputting "Successfully loaded custom commands...".

   > Side note: you may change the message after `echo` to
   > be whatever you want or omit it completely.
