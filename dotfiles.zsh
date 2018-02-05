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
cp $DOTFILES_PATH/shell/.zshrc $HOME

# git
cp $DOTFILES_PATH/git/.gitconfig                     $HOME
cp $DOTFILES_PATH/git/.gitignore_global              $HOME
cp $DOTFILES_PATH/git/.gitcommit_template_emoji      $HOME
cp $DOTFILES_PATH/git/.gitcommit_template_commitizen $HOME
git config --global user.name $NAME
git config --global user.email $EMAIL
git config --global commit.template $HOME/.gitcommit_template_commitizen

# pry
cp $DOTFILES_PATH/pry/.pryrc $HOME

# cz
cp $DOTFILES_PATH/cz/.czrc $HOME

source $HOME/.zshrc
