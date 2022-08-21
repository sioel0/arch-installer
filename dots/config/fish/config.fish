if status is-interactive
  # set variables
  set -x EDITOR nvim
  set -x VISUAL nvim
  set -x PAGER less
  set -x TERM screen-256color
  set -x ANSIBLE_NOCOWS 1
  set PATH $PATH /home/sioel0/.local/bin /home/sioel0/.scripts

  # set aliasses
  alias cat='bat'
  alias gdb='gdb -q'
  alias ls='ls --color=auto'
  alias ll='ls -l'
  alias la='ls -la'
  alias sv='sudo nvim'
  alias sctl='sudo systemctl'
  alias ssh='ssh -X'
  alias p='sudo pacman'
  alias v='nvim'

  # git aliases
  alias ga='git add'
  alias gs='git status'
  alias gc='git commit -m'
  alias gps='git push origin'
  alias gf='git fetch'
  alias gpl='git pull origin'

  
end
