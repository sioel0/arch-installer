# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode auto      # update automatically without asking

zstyle ':omz:update' frequency 14

ENABLE_CORRECTION="true"

plugins=(git git-auto-fetch zsh-autosuggestions zsh-syntax-highlighting colored-man-pages colorize cp extract)

source $ZSH/oh-my-zsh.sh

# User configuration

export EDITOR="helix"
export VISUAL="helix"
export PAGER="bat"
export PATH="$PATH:/home/sioel0/.local/bin:/home/sioel0/.scripts"
export TERM="xterm-256color"
export ANSIBLE_NOCOWS=1
# pico variables
export PICO_SDK_PATH=/home/sioel0/pico/pico-sdk
export PICO_EXAMPLES_PATH=/home/sioel0/pico/pico-examples
export PICO_EXTRAS_PATH=/home/sioel0/pico/pico-extras
export PICO_PLAYGROUND_PATH=/home/sioel0/pico/pico-playground

# aliases
alias cat='bat'
#alias ls='lsd'
alias ll='ls -l'
alias la='ls -la'
alias sctl='sudo systemctl'
alias ssh='ssh -X'
alias p='sudo pacman'
alias v='nvim'
alias sv='sudo nvim'
alias hx='helix'
alias shx='sudo helix'

# load powerlevel10k configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
