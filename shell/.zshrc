source ~/.my.zsh

source ~/.zplug/init.zsh

#
# bind key
#
bindkey -e
bindkey '\e\e[C' forward-word  # make able to use ward jump by "⌥ + →"
bindkey '\e\e[D' backward-word # make able to use ward jump by "⌥ + ←"

#
# zplug
#
zplug "zplug/zplug"

#
# Theme
#
zplug "isuke/droolscar", as:theme

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
