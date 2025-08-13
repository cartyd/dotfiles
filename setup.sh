#!/bin/bash

# Dotfiles setup script
# This script creates symlinks from your home directory to the dotfiles in this repository

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HOME_DIR="$HOME"

echo "Setting up dotfiles from $DOTFILES_DIR"

# Function to create symlink with backup
create_symlink() {
    local source="$1"
    local target="$2"
    
    if [ -e "$target" ] || [ -L "$target" ]; then
        echo "Backing up existing $target to ${target}.backup"
        mv "$target" "${target}.backup"
    fi
    
    echo "Creating symlink: $target -> $source"
    ln -sf "$source" "$target"
}

# Create symlinks for zsh configuration files
if [ -f "$DOTFILES_DIR/.zshrc" ]; then
    create_symlink "$DOTFILES_DIR/.zshrc" "$HOME_DIR/.zshrc"
fi

if [ -f "$DOTFILES_DIR/.zshenv" ]; then
    create_symlink "$DOTFILES_DIR/.zshenv" "$HOME_DIR/.zshenv"
fi

if [ -f "$DOTFILES_DIR/.zprofile" ]; then
    create_symlink "$DOTFILES_DIR/.zprofile" "$HOME_DIR/.zprofile"
fi

# Install Homebrew packages if Brewfile exists
if [ -f "$DOTFILES_DIR/Brewfile" ]; then
    echo "Installing Homebrew packages from Brewfile..."
    if command -v brew &> /dev/null; then
        brew bundle install --file="$DOTFILES_DIR/Brewfile"
        echo "✅ Homebrew packages installed!"
    else
        echo "⚠️  Homebrew not found. Please install Homebrew first:"
        echo "   /bin/bash -c \"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\""
    fi
fi

echo "Dotfiles setup complete!"
echo "You may need to restart your terminal or run 'source ~/.zshrc' to apply changes."
