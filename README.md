# Dotfiles

My personal zsh configuration files for macOS.

## Installation

### On a new machine:

1. Clone this repository:
   ```bash
   git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles
   ```

2. Run the setup script:
   ```bash
   cd ~/dotfiles
   ./setup.sh
   ```

3. Restart your terminal or source the configuration:
   ```bash
   source ~/.zshrc
   ```

### Updating configurations

After making changes to any dotfile on one machine:

1. Commit and push changes:
   ```bash
   cd ~/dotfiles
   git add .
   git commit -m "Update configuration"
   git push origin main
   ```

2. On other machines, pull the latest changes:
   ```bash
   cd ~/dotfiles
   git pull origin main
   ```

## Files included

- `.zshrc` - Main zsh configuration
- `.zprofile` - zsh profile settings
- `setup.sh` - Automated setup script

## Notes

- The setup script creates symbolic links, so any changes you make to `~/.zshrc` will automatically be reflected in this repository
- Your original dotfiles are backed up with a `.backup` extension before being replaced
