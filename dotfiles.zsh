DOTFILES_PATH=$PWD
MY_FILE_PATH=$HOME/.my.zsh

touch $MY_FILE_PATH

if [ -z "$NAME" ]; then
  echo -n "Input your name > "
  read NAME
  echo "export NAME=${NAME}" >> $MY_FILE_PATH
fi

if [ -z "$EMAIL" ]; then
  echo -n "Input your email > "
  read EMAIL
  echo "export EMAIL=${EMAIL}" >> $MY_FILE_PATH
fi

# shell
cp -r $DOTFILES_PATH/shell/. $HOME

# git
cp -r $DOTFILES_PATH/git/. $HOME
git config --global user.name $NAME
git config --global user.email $EMAIL
git config --global commit.template $HOME/.gitcommit_template_commitizen

# prompt
cp -r $DOTFILES_PATH/prompt/. $HOME

# pry
cp -r $DOTFILES_PATH/pry/. $HOME

# direnv
cp -r $DOTFILES_PATH/direnv/. $HOME

# rust
cp -r $DOTFILES_PATH/rust/. $HOME

source $HOME/.zshrc
