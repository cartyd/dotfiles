# Dotfiles

My personal zsh configuration files for macOS.

## Installation

### On a new machine:

1. Clone this repository:
   ```bash
   git clone https://github.com/cartyd/dotfiles.git ~/dotfiles
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

**Option 1: Use the convenient alias (recommended):**
```bash
dotpush
```

**Option 2: Manual approach:**
```bash
cd ~/dotfiles
git add .
git commit -m "Update configuration"
git push origin main
```

### Syncing changes on other machines

**Option 1: Use the convenient alias (recommended):**
```bash
dotsync
```

**Option 2: Manual approach:**
```bash
cd ~/dotfiles
git pull origin main
```

## Helpful Aliases

Once installed, you'll have access to these convenient aliases:

**Dotfiles management:**
- `dotfiles` - Navigate to the dotfiles directory
- `dotsync` - Pull the latest changes from GitHub
- `dotpush` - Add, commit, and push your changes to GitHub
- `reload` - Reload your zsh configuration

**Development tools:**
- `brewsync` - Install/update all development tools from Brewfile
- `brewcheck` - Check if all Brewfile packages are installed
- `nodesetup` - Install essential global npm packages for TypeScript development

## Files included

- `.zshrc` - Main zsh configuration with development aliases and modern tools
- `.zprofile` - zsh profile settings
- `.gitconfig` - Git configuration with useful aliases and settings
- `Brewfile` - Development-focused Homebrew packages (Node.js, Go, Python, CLI tools)
- `install-node-globals.sh` - Script to install essential global npm packages for TypeScript
- `setup.sh` - Automated setup script that installs dotfiles and Homebrew packages
- `README.md` - This documentation

## Notes

- The setup script creates symbolic links, so any changes you make to `~/.zshrc` will automatically be reflected in this repository
- Your original dotfiles are backed up with a `.backup` extension before being replaced
