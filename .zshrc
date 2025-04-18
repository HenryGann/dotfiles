# Aliases
alias cb="xclip -selection clipboard"

# Fix broken ctrl binds
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^H' backward-kill-word

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v

# Theme
fpath+=($HOME/.zsh/pure)

autoload -U promptinit; promptinit

# Custom Settings
PURE_CMD_MAX_EXEC_TIME=10
PURE_GIT_PULL=0
PURE_GIT_DELAY_DIRTY_CHECK=900

# Custom Bright Pastel Colours for Pure (on dark background)

zstyle :prompt:pure:prompt:success color '#E361AE'        # minty green (✓)
zstyle :prompt:pure:prompt:error color '#FF6E7F'          # coral red (✗)
zstyle :prompt:pure:prompt:continuation color '#89FCFF'   # icy cyan (>)
zstyle :prompt:pure:git:branch color '#A8FF60'            # bright green branch name
zstyle :prompt:pure:git:dirty color '#FFF5A5'             # buttery yellow
zstyle :prompt:pure:path color '#76E4F7'                  # bright cyan for directories
zstyle :prompt:pure:host color '#FFD6A5'                  # peachy orange


prompt pure

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Extensions/Sources

# History suggestions
source ~/.zsh/zsh-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Autosuggest
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#888888"

# Syntax hightlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#A8FF60'
ZSH_HIGHLIGHT_STYLES[path]+=',underline'
