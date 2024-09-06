#!/bin/bash

# Function to prompt user and copy file if yes
prompt_and_copy() {
    local src="$1"
    local dest="$2"
    local default="y"

    read -p "Do you want to copy $src to $dest? [Y/n]: " -n 1 -r
    echo    # Move to a new line

    if [[ $REPLY =~ ^[Yy]$ ]] || [[ -z $REPLY ]]; then
        if cp -R "$src" "$dest"; then
            echo "Copied $src to $dest"
        else
            echo "Failed to copy $src to $dest"
        fi
    else
        echo "Skipped $src"
    fi
}

prompt_and_copy "$HOME/Library/Application Support/Code/User/settings.json" "$HOME/Documents/Projects/configs/vscode"
prompt_and_copy "$HOME/Library/Application Support/Code/User/keybindings.json" "$HOME/Documents/Projects/configs/vscode"
prompt_and_copy "$HOME/.ideavimrc" "$HOME/Documents/Projects/configs/.ideavimrc"
prompt_and_copy "$HOME/Downloads/vimium-options.json" "$HOME/Documents/Projects/configs/vimium-options.json"
prompt_and_copy "$HOME/.zshrc" "$HOME/Documents/Projects/configs/terminal"
prompt_and_copy "$HOME/Desktop/Profiles.json" "$HOME/Documents/Projects/configs/terminal/iTerm2/"
prompt_and_copy "$HOME/Desktop/Keybindings.itermkeymap" "$HOME/Documents/Projects/configs/terminal/iTerm2/"
prompt_and_copy "$HOME/.tmux.conf" "$HOME/Documents/Projects/configs/terminal"
prompt_and_copy "$HOME/.p10k.zsh" "$HOME/Documents/Projects/configs/terminal"
prompt_and_copy "$HOME/.config/nvim" "$HOME/Documents/Projects/configs"
prompt_and_copy "$HOME/.gitconfig" "$HOME/Documents/Projects/configs/git/"
prompt_and_copy "$HOME/Library/Application Support/lazygit/config.yml" "$HOME/Documents/Projects/configs/git/lazygit/"
