### add most repoman fuctions into a shell that should take care of the repo.
#### since I am new @ repoman I figgured best to script many of the use cases.... 
## and a few extra uses for those more stuborn ebuilds.... 
## now if I could only make a Meta gen recursive script... 
#!/bin/bash

function walk_tree {
      echo "Directory: $1"
      local directory="$1"
      local i
      for i in "$directory"/*; 
      do
      echo "File: $i"
        if [ "$i" = . -o "$i" = .. ]; then 
            continue
        elif [ -d "$i" ]; then  # Process directory and / or walk-down into directory
            # add command here to process all files in directory (i.e. ls -l "$i/"*)
            walk_tree "$i"      # DO NOT COMMENT OUT THIS LINE!!
        else
            continue    # replace continue to process individual file (i.e. echo "$i")
        fi
      done
}

walk_tree $HOME
 
walk_tree "$1" "\.sh$"
repoman manifest
repoman full
repoman commit
repoman -m "Version bump" commit
