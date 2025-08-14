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

PROMPT="%F{#b360b0}[%n]%f%F{#ccaa2f}[%~]%f %F{#cc542f}>%f "
