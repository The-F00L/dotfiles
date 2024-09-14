export EDITOR="nvim"
export PATH="/opt/homebrew/opt/binutils/bin:$PATH"
export PATH="/Users/robertjona/go/bin/:$PATH"
export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"
export PATH="~/.asdf/shims:$PATH"
export FZF_DEFAULT_OPTS='--preview "bat --style=numbers --color=always --line-range :500 {}"'
export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib"
export CPATH="$CPATH:$(brew --prefix)/include"

alias condb='psql -h 127.0.0.1 -p 15432 -U postgres'
alias n="nvim"
alias lzd="lazydocker"
alias lg="lazygit"
alias ll="exa --long"
alias java16='/Users/robertjona/Downloads/jdk-16.0.1.jdk/Contents/Home/bin/java'

