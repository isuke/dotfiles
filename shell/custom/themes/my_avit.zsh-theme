# MY AVIT ZSH Theme

source $ZSH/themes/avit.zsh-theme

PROMPT='
$(_user_host)${_current_dir}${_return_status} $(git_prompt_info) $(git_prompt_status)%{$reset_color%}
▶ '

RPROMPT='%{$(echotc UP 1)%}$(_ruby_version)%{$(echotc DO 1)%}'

function _ruby_version() {
  if type rbenv 1>/dev/null 2>/dev/null ; then
    echo "%{$fg[white]%}$(rbenv version-name)%{$reset_color%}"
  fi
}
