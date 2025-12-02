


# The following lines were added by compinstall
zstyle :compinstall filename '/home/acito/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1001
SAVEHIST=1000
setopt beep
# End of lines configured by zsh-newuser-install
export PATH="${HOME}/.local/bin":${PATH}
export PATH="${HOME}/.local/bin":${PATH}

export PATH=$PATH:/home/acito/.spicetify

eval "$(direnv hook zsh)"
