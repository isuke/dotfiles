echo 'read common.zsh'

### Path ###
export PATH=$HOME/bin:/usr/local/bin:$PATH

### Theme ###
ZSH_THEME="my_avit"

### Complement ###
autoload -U compinit; compinit        # 補完機能を有効にする
setopt auto_list                      # 補完候補を一覧で表示する(d)
setopt list_packed                    # 補完候補をできるだけ詰めて表示する
setopt list_types                     # 補完候補にファイルの種類も表示する
bindkey "^[[Z" reverse-menu-complete  # Shift-Tabで補完候補を逆順する("\e[Z"でも動作する)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # 補完時に大文字小文字を区別しない

### History ###
HIST_STAMPS="yyyy-mm-dd"
setopt bang_hist          # !を使ったヒストリ展開を行う(d)
setopt hist_reduce_blanks # 余分なスペースを削除してヒストリに保存する
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

### Commands ###
# dotfiles
alias dotfiles="zsh dotfiles.zsh"

# history
alias h='history'

# touch
alias t='touch'

# tar
alias tzip='tar zcvf'
alias tunzip='tar xvf'

# less
alias less='less -N -S -#4'
