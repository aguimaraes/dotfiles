# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

# tmux plugin configuration
# environment variables affecting plugins must be set before the plugin is loaded
export ZSH_TMUX_AUTOSTART=true

ZSH_THEME="agnosterzak"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
    tmux
)

source $ZSH/oh-my-zsh.sh

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
#pokemon-colorscripts --no-title -s -r #without fastfetch
pokemon-colorscripts --no-title -s -r | fastfetch -c $HOME/.config/fastfetch/config-pokemon.jsonc --logo-type file-raw --logo-height 10 --logo-width 5 --logo -


# Set-up icons for files/directories in terminal using lsd
alias ls='lsd'

# nvim aliases
alias v=nvim
alias vim=nvim

# ls aliases
alias l='ls -l'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# ESP32 IDF aliases
alias getidf='source ~/src/esp-idf/export.sh'
alias idf='idf.py'

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory


eval $(thefuck --alias)
