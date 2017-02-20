source ~/.zplug/init.zsh

#
# Theme
#
zplug "eendroroy/alien"

#
# Plugin
#
zplug "b4b4r07/enhancd", use:enhancd.sh
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting"

#
# my custom
#
zplug "isuke/shells"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose
