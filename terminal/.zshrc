# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


# Path to your oh-my-zsh installation.
export ZSH="/Users/paulnaber/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
		# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# thefuck
plugins=(git zsh-autosuggestions z vi-mode)

source $ZSH/oh-my-zsh.sh
PS1='[%2d] $ '

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# set java home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home
alias java17="export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home"
alias java11="export JAVA_HOME=/Users/paulnaber/Documents/Java/jdk-11.0.22.jdk/Contents/Home"

alias gitlog="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias ls="colorls"
alias lg=lazygit


# Load Angular CLI autocompletion.
# source <(ng completion script)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[[ -r $NVM_DIR/bash_completion ]] && \. $NVM_DIR/bash_completion

# Add JBang to environment
alias j!=jbang
export PATH="$HOME/.jbang/bin:$PATH"

# Add Docker Desktop for Mac (docker)
export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin/"

# vs code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH="$PATH:/Applications/WebStorm.app/Contents/MacOS"

# intellij
function idea() {
    open -a "IntelliJ IDEA CE" "$1"
}


# bun completions
[ -s "/Users/paulnaber/.bun/_bun" ] && source "/Users/paulnaber/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/paulnaber/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/paulnaber/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/paulnaber/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/paulnaber/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/Users/paulnaber/miniforge3/etc/profile.d/mamba.sh" ]; then
    . "/Users/paulnaber/miniforge3/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

# aider
faider() {
    local dir_exclusions=('.git' '__pycache__' 'node_modules')
    local file_exclusions=('.aider*' '__init__.py' '*.log')
    local find_args=()
    local selected_items
    local files_to_add=()
 
    # Add directory exclusions
    for dir_exclusion in "${dir_exclusions[@]}"; do
        find_args+=(! -path "*/$dir_exclusion" ! -path "*/$dir_exclusion/*")
    done
 
    # Add file exclusions
    for file_exclusion in "${file_exclusions[@]}"; do
        find_args+=(! -name "$file_exclusion")
    done
 
    # Add exclusions from .aiderignore if it exists
    if [ -f ".aiderignore" ]; then
        while IFS= read -r line || [[ -n $line ]]; do
            # Skip empty lines and comments
            [[ $line = \#* ]] || [[ -z $line ]] && continue
            # Trim leading and trailing whitespace
            line=$(echo "$line" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
            # Check if the line is a directory pattern
            if [[ $line == */ ]]; then
                # Remove the trailing '/' for directory exclusion
                local dir=${line%/}
                find_args+=(! -path "*/$dir" ! -path "*/$dir/*")
            else
                find_args+=(! -path "*/$line" ! -name "$line")
            fi
        done < .aiderignore
    fi
 
    # Run find command and select files/directories with fzf
    if [[ -n $ZSH_VERSION ]]; then
        # Zsh specific command
        selected_items=("${(@f)$(find . \( -type f -o -type d \) "${find_args[@]}" -print | fzf --multi --exit-0)}")
    else
        # Bash specific command
        IFS=$'\n' read -d '' -r -a selected_items < <(find . \( -type f -o -type d \) "${find_args[@]}" -print | fzf --multi --exit-0)
    fi
 
    # Process selected items
    for item in "${selected_items[@]}"; do
        if [ -d "$item" ]; then
            # If it's a directory, find all files within it (respecting exclusions)
            while IFS= read -r -d '' file; do
                files_to_add+=("$file")
            done < <(find "$item" -type f "${find_args[@]}" -print0)
        elif [ -f "$item" ]; then
            # If it's a file, add it directly
            files_to_add+=("$item")
        fi
    done
 
    # Check if any files were found to add
    if [ ${#files_to_add[@]} -gt 0 ]; then
        aider "${files_to_add[@]}"
    else
        echo "No files selected or found in selected directories."
    fi
}
