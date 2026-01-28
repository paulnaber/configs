# Path to your oh-my-zsh installation.
export ZSH="/Users/paulnaber/.oh-my-zsh"
ZSH_THEME="robbyrussell" # See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
plugins=(git zsh-autosuggestions z)
source $ZSH/oh-my-zsh.sh

# set java home
export JAVA_HOME=/Users/paulnaber/Documents/Java/jdk-17.0.12.jdk/Contents/Home
alias java21="export JAVA_HOME=/Users/paulnaber/Documents/Java/jdk-21.0.6.jdk/Contents/Home"
alias java17="export JAVA_HOME=/Users/paulnaber/Documents/Java/jdk-17.0.12.jdk/Contents/Home"
alias java11="export JAVA_HOME=/Users/paulnaber/Documents/Java/zulu-11.jdk/Contents/Home"
java17 # default to java 17
alias j!=jbang
export PATH="$HOME/.jbang/bin:$PATH"

# git
alias gitlog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias lg=lazygit

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[[ -r $NVM_DIR/bash_completion ]] && \. $NVM_DIR/bash_completion

# intellij
function idea() {
    open -a "IntelliJ IDEA CE" "$1"
}
# webstorm
function ws() {
    open -a "Webstorm" "$1"
}

# nvim
alias vim="nvim"
alias vi="nvim"
alias oldvim="vim"
alias v="nvim"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "/Users/paulnaber/.bun/_bun" ] && source "/Users/paulnaber/.bun/_bun"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# paths
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:$HOME/Scripts
export PATH="/usr/local/opt/postgresql@15/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.4.0/bin:$PATH"
export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin/"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:/Applications/WebStorm.app/Contents/MacOS"