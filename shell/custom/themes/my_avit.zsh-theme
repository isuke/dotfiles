# MY AVIT ZSH Theme

source $ZSH/themes/avit.zsh-theme

PROMPT='
$(_user_host)${_current_dir}${_return_status} $(git_prompt_info) $(_ruby_version)
▶ '
