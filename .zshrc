# black background
echo -e '\e]11;rgb:0/0/0\a'

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/frt/.zshrc'

autoload -Uz compinit promptinit select-word-style colors
compinit
# End of lines added by compinstall
promptinit
select-word-style shell
colors

# Fish-like syntax highlighting, autosugestions
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# pkgfile "command not found" handler
source /usr/share/doc/pkgfile/command-not-found.zsh

# vte non-login shell fix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# https://starship.rs/guide/#%F0%9F%9A%80-installation
eval "$(starship init zsh)"

alias vi="nvim"

source /usr/share/nvm/init-nvm.sh
