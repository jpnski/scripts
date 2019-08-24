#! /bin/bash

# checks diff of local user config files for predefined applicatiosn and patches corresponding files in specified git repository.

# define local config repository
config_repo='~/github/.conf'

# check os to patch correct files
if [[ "$OSTYPE" == "linux-gnu" ]]
then
    # linux config files
    bashrc_conf='~/.bashrc'
    bashrc_gitfile=$config_repo'/linux.bashrc'
    
    # get diff
    DIFF=diff $bashrc_conf $bashrc_gitfile
    
    if [ "$DIFF" == "" ]
    then 
        echo ".bashrc is synced." 
    else
        echo ".bashrc needs to be synced."
    fi
fi

   # if [ "$DIFF" != "" ]
   # then 
   #     echo "Linux .bashrc needs to be synced"
   #     # printf "%s\n" "Commit local changes to git file?"
   # fi 

#    vim_conf='~/.vimrc'
#    i3_conf='~/.config/i3/config'
#    st_conf='~/.config/polybar/config'
#    polybar_conf='~/.config/polybar/config'
#    ranger_conf='~/.config/ranger/rc.conf'
