# Bundler
alias bi='bundle install'
alias bc="bundle clean"
alias be="bundle exec"
alias bes="bundle exec spring"

# irb
function irb_with_options () {
  if [[ $(ruby -v) =~ "ruby 3\.[2..9]" ]]; then
    \irb --prompt-mode=simple --no-pager --type-completor
  else
    \irb --prompt-mode=simple
  fi
}

alias irb=irb_with_options
