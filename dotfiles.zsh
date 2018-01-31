DOTFILES_PATH=$HOME/dotfiles
MY_FILE_PATH=$HOME/.my.zsh

if [ -e $MY_FILE_PATH ]; then
  echo "${MY_FILE_PATH} is exists"
  source $MY_FILE_PATH
else
  echo -n "Input your name > "
  read NAME
  echo -n "Input your email > "
  read EMAIL

  touch $MY_FILE_PATH
  echo "export NAME=${NAME}" >> $MY_FILE_PATH
  echo "export EMAIL=${EMAIL}" >> $MY_FILE_PATH
fi

# shell
cp $DOTFILES_PATH/shell/.zshrc $HOME/.zshrc

# git
cp $DOTFILES_PATH/git/.gitconfig          $HOME/.gitconfig
cp $DOTFILES_PATH/git/.gitignore_global   $HOME/.gitignore_global
cp $DOTFILES_PATH/git/.gitcommit_template $HOME/.gitcommit_template
git config --global user.name $NAME
git config --global user.email $EMAIL
git config --global commit.template $HOME/.gitcommit_template

# pry
cp $DOTFILES_PATH/pry/.pryrc $HOME/.pryrc

# cz
cp $DOTFILES_PATH/cz/.czrc $HOME/.czrc

source $HOME/.zshrc
