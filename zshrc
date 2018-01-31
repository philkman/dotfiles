# Fix PATH-Variable. Since Yosemite, the PATH-Variable appears two times, which causes problems
p=$PATH
unset PATH
export PATH=$p

. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion
. ~/.zsh/iterm2_shell_integration.zsh

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && . ~/.localrc

# Fix $PATH for homebrew
export PATH="/usr/local/bin:$PATH"

PATH=$PATH:/opt/peaq/apps/dev/current/bin # Add peaq to PATH for scripting
eval "$(rbenv init -)"

test -x "`which archey`" && archey
