# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

alias zshconfig="subl $HOME/.zshrc"
alias zshload="source $HOME/.zshrc"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$ZSH/custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler)

source $ZSH/oh-my-zsh.sh

