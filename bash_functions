# <<< Function Declarations
# listed also in .bashrc for reference

# Show contents of the directory after changing to it
function cd () {
    builtin cd "$1"
    ls -ACF
}

# Funtion for navigating up the path 
function up(){
    if [[ $1 = "" ]] || [[ $1 -lt 1 ]] ; then echo "Argument must be a positive integer."; fi
    for n in $(seq 1 $1); do dots+="../"; done
    cd $dots
    n=""
    dots=""
}

# Easy way to extract archives
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1     ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
}
