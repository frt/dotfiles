# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/frt/.zshrc'

autoload -Uz compinit promptinit
compinit
# End of lines added by compinstall
promptinit
#prompt agnoster

export ALIEN_SECTION_USER_HOST=1
export ALIEN_VERSIONS_PROMPT='PYTHON'
export ALIEN_USE_NERD_FONT=1
export ALIEN_GIT_SYM=G
export ALIEN_BRANCH_SYM=
export ALIEN_SECTION_TIME_FORMAT='%X'
source ~/.zprompts/prompt_alien_setup

# Fish-like syntax highlighting, autosugestions
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# and history substring search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# pkgfile "command not found" handler
source /usr/share/doc/pkgfile/command-not-found.zsh

# vte non-login shell fix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi
