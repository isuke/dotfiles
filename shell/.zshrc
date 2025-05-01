source ~/.my.zsh

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

#
# bind key
#
bindkey -e
bindkey '\e\e[C' forward-word  # make able to use ward jump by "⌥ + →"
bindkey '\e\e[D' backward-word # make able to use ward jump by "⌥ + ←"

#
# Theme
#
# zinit load "isuke/droolscar"
zinit ice from"gh-r" as"program"
zinit load "isuke/droolmaw"

prompt_precmd() {
  export DROOLMAW_RETVAL=$?
  PROMPT=`droolmaw`
  PROMPT2=`droolmaw --2`
  RPROMPT=`droolmaw --right`
}
add-zsh-hook precmd prompt_precmd

#
# Plugin
#
# zinit light "b4b4r07/enhancd"
zinit light "zsh-users/zsh-autosuggestions"
zinit light "zsh-users/zsh-completions"
zinit light "zsh-users/zsh-history-substring-search"
zinit light "zsh-users/zsh-syntax-highlighting"

# zsh-notify
zinit light "marzocchi/zsh-notify"
zstyle ':notify:*' success-title "Command finished (in #{time_elapsed} seconds)"
zstyle ':notify:*' error-title "Command failed (in #{time_elapsed} seconds)"
zstyle ':notify:*' success-sound "default"
zstyle ':notify:*' error-sound "Glass"
zstyle ':notify:*' command-complete-timeout 30

#
# My Custom
#
zinit ice pick"/dev/null" atpull"!git reset --hard origin/master" atload="for f (*.zsh) source \$f"
zinit load "isuke/shells"
