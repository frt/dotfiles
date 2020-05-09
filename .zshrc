# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/frt/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Fish-like syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# pkgfile "command not found" handler
source /usr/share/doc/pkgfile/command-not-found.zsh

# vte non-login shell fix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi
