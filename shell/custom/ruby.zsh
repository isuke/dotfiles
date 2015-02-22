echo 'read ruby.zsh'

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Bundler
alias bundle_install_to_vendor='bundle install --path=vendor/bundle --binstubs=vendor/bin --without production'

# Rails
alias rails_new='bundle exec rails new . --skip-bundle -T --no-ri --no-rdoc'

