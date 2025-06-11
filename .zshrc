# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH="$HOME/.local/bin:$PATH"
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	zsh-history-substring-search
)

# Highlighting
typeset -A ZSH_HIGHLIGHT_STYLES
typeset -A ZSH_HIGHLIGHT_STYLES

# Match 'sudo' and similar modifiers
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#00FF00,underline'

# Match actual commands (including ones after sudo)
ZSH_HIGHLIGHT_STYLES[command]='fg=#00FF00'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#00FF00'
ZSH_HIGHLIGHT_STYLES[function]='fg=#00FF00'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#00FF00'

# Make everything else white
ZSH_HIGHLIGHT_STYLES[default]='fg=white'



# History suggestions
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Autosuggest
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#888888"

# Fix broken ctrl binds
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^H' backward-kill-word

# eval "$(starship init zsh)"
ZSH_THEME="powerlevel10k/powerlevel10k"
source $ZSH/oh-my-zsh.sh

# Aliases
alias cb="xclip -selection clipboard"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
