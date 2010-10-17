# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tommi/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# GIT PROMPT
# get the name of the branch we are on
git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "(${ref#refs/heads/}) "
}
autoload -U colors
colors
setopt prompt_subst
PROMPT='%{$fg_bold[green]%}%n@%m %{$fg[blue]%}%c %{$fg_bold[red]%}$(git_prompt_info)%{$fg[blue]%}%% %{$reset_color%}'

# load aliases
[[ -f ~/.zsh/zsh_aliases ]] && . ~/.zsh/zsh_aliases

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
