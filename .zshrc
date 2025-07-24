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

PROMPT="%F{#d4d4fc}[%n]%f%F{#a5a3c6}[%~]%f %F{#d3cef1}>%f "
