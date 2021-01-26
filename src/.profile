
if [ -f $HOME/.bash_profile ]; then
    . $HOME/.bash_profile
    return || exit 0
fi

if [ -f $HOME/.bashrc ]; then
    . $HOME/.bashrc
fi

####### Do not modify this file! #######
