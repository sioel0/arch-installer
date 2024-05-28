# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Setup zinit plugin manager
export ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}"/zinit.zsh

# Add Powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Setup tmux plugin
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOSTART_ONCE=false
ZSH_TMUX_AUTOQUIT=true
ZSH_TMUX_CONFIG=/home/sioel0/.tmux.conf
ZSH_TMUX_DEFAULT_SESSION_NAME="default"
ZSH_TMUX_UNICODE=true
ZSH_TMUX_FIXTERM_WITH_256COLOR=true

# Oh-my-zsh-plugins
zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found
zinit snippet OMZP::tmux

# Load completions
autoload -U compinit && compinit

zinit cdreplay -q

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keybindings
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# History settings
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':completion:*:git-checkout:*' sort false
zstyle ':fzf-tab:complete:*:*' fzf-preview 'bat ${(Q)realpath}'

# Shell variables
export EDITOR="helix"
export VISUAL="helix"
export PAGER="bat"
export PATH="$PATH:/home/sioel0/.local/bin:/home/sioel0/.scripts"

# General aliases
alias ls='eza --color=always'
alias la='ls -al'
alias ll='ls -l'
alias hx='helix'
alias shx='sudo helix'
alias sctl='sudo systemctl'
alias cat='bat'

# Arch Linux aliases
alias pin='sudo pacman -S'
alias prm='sudo pacman -Rns'
alias pcl='sudo pacman -Sc'
alias pup='sudo pacman -Sy'
alias sysupg='paru -Syu'
alias aurins='paru -S'
alias aurrm='paru -Rns'

# Shell integrations
eval "$(fzf --zsh)"
