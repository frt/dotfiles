typeset -U PATH path

# set PATH so it includes user's private bin if it exists
[ -d "$HOME/bin" ] && path=("$HOME/bin" "$path[@]")
[ -d "$HOME/.local/bin" ] && path=("$HOME/.local/bin" "$path[@]")

# set PATH to include ruby gems
[ -d "$HOME/.gem/ruby/2.7.0/bin" ] && path=("$HOME/.gem/ruby/2.7.0/bin" "$path[@]")

# set PATH so it includes flutter if it exists
[ -d "$HOME/repos/flutter/bin" ] && path=("$HOME/repos/flutter/bin" "$path[@]")

export PATH
