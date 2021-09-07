# <<< Bash Aliases
# ------ Simple Aliases Quality of Life

# Always copy contents of directories (r)ecursively and explain (v) what was done
alias cp='cp -rv'

# List contents with colors for file types, (A)lmost all hidden files (without . and ..), in (C)olumns, with class indicators (F)
alias ls='ls --color=auto -ACF'

# List contents with colors for file types, (a)ll hidden entries (including . and ..), use (l)ong listing format, with class indicators (F)
alias ll='ls --color=auto -alF'

# Explain (v) what was done when moving a file
alias mv='mv -v'

# Create any non-existent (p)arent directories and explain (v) what was done
alias mkdir='mkdir -pv'

# Always try to (c)ontinue getting a partially-downloaded file
alias wget='wget -c'

# Pretty listing human readable
alias lh='ls -CHG --color'

# See additional bash functions listed below in the functions section.

# ------ Quality of Life

# Find out what is taking so much space on your drives
alias diskspace="du -S | sort -n -r | less"

# Want to know how fast your network is? Just download Speedtest-cli and use this alias. You can choose a server closer to your location by using the speedtest-cli --list command.
alias speed='speedtest-cli --server 2406 --simple'



# ------ Movment 
alias home='cd ~'
alias root='cd /'
alias dotfiles='cd ~/dotfiles'
#alias dtop='cd ~/Desktop'

#alias .="cd .."
#alias ..="cd ../.."
#alias ...="cd ../../.."
#alias ....="cd ../../../.."
#alias .....="cd ../../../../.."

# ------ Shortcuts to files and directories

# Shortcut for vimrc
alias vimrc='nvim ~/.vimrc'
# Shortcut for bashrc
alias bashrc='nvim ~/dotfiles/bashrc'
# Shortcut for bash_aliases
alias bash_aliases='nvim ~/dotfiles/bash_aliases'
# Shortcut for bash_functions
alias bash_functions='nvim ~/dotfiles/bash_functions'

# Parenting changing perms on /

alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
# <<< Alias for rm to trash-cli <<<
alias rm=trash

# Alias vim to nvim
alias vim="nvim"
