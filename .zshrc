# Lines configured by zsh-newuser-install
bindkey -e
# End of lines configured by zsh-newuser-install



# MY OPTIONS  !!!

autoload -Uz compinit promptinit
#autoload -Uz compinit && promptinit
compinit
promptinit

zstyle ':completion:*' menu select

autoload -U colors && colors
#PROMPT="%{$fg[magenta]%}[%n] %{$fg[red]%}&& %{$fg[green]%}[%m] 
#%{$fg[cyan]%}(%d) %{$fg[black]%} >>>  "

PROMPT="%F{#F0EDE8}[%n]%f%F{#2C382F}[%~]%f %F{#F0EDE8}>%f "

# Created by `pipx` on 2025-09-27 18:27:54
export PATH="$PATH:/home/lazzydisa/.local/bin"
