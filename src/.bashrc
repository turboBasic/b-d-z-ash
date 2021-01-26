
echo all real startup things happen below

####### Code for Interactive & Non-interactive shells
    SPACE=' '
    printf '%10s Initialize shell\n' "$SPACE"

    [ -n "$BASH_VERSION" ] && shopt -s globstar

    ### Initialize environment variables and PATHs
    ### valid for _shell_only_ programs

    ### Functions
        printf '%20s Initialize functions\n' "$SPACE"


####### Code for Interactive shells

    printf '%10s Initialize interactive shell\n' "$SPACE"


    ### Set history facilities
        export HISTFILESIZE=-1
        export HISTSIZE=-1
        export HISTTIMEFORMAT="[%F %T]"
        HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/bash/bash_history"
        export HISTCONTROL=ignoreboth
        if [ -n "$BASH_VERSION" ]; then
            shopt -s cmdhist
            shopt -s histappend
            shopt -u lithist
        fi

        mkdir --parents --mode 700 "$( dirname "$HISTFILE" )"
        touch "$HISTFILE"
        chmod 600 "$HISTFILE"
        PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

    ### Aliases for interactive shells
        printf '%20s Aliases\n' "$SPACE"

    ### Keyboard completions for interactive shells
        printf '%20s Keyboard completions\n' "$SPACE"

    ### Skins initialization for interactive shells
        printf '%20s Skins\n' "$SPACE"

    ### Prompt initialization for interactive shells
        printf '%20s Prompt\n' "$SPACE"
