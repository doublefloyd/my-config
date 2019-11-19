# Load the antigen plugin manager (https://github.com/zsh-users/antigen)
source $HOME/.antigen.zsh

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle git
antigen theme denysdovhan/spaceship-prompt
antigen bundle dirhistory
antigen bundle python
antigen bundle sudo
antigen bundle posva/catimg
antigen bundle zsh-users/zsh-autosuggestions
antigen apply

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# custom aliases in .aliases file
source ~/.my-config/.aliases

# To make less colorful
# In Debian, install source-highlight
# Source: http://superuser.com/questions/71588/how-to-syntax-highlight-via-less
export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=' -R '

# https://github.com/zsh-users/zsh-history-substring-search
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
bindkey -M vicmd '^[[A' history-substring-search-up
bindkey -M vicmd '^[[B' history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# python debugging
export PYTHONPATH=$PYTHONPATH:~/.my-config/python

# Switch colon and semicolon
xmodmap -e "keycode 47 = colon semicolon"

# Force terminal to have 256 colors for imgcat
export TERM=xterm-256color
PATH=$PATH:~/.imgcat/bin