# =============================================================================
# ENVIRONMENT VARIABLES
# =============================================================================
export GOROOT="$(brew --prefix golang)/libexec"
export GOPATH=$HOME/dev/go
export GOLAND="/Applications/GoLand.app/Contents/MacOS"
export PYTHON="/Users/gideon/Library/Python/3.9/bin"
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin:$GOLAND:$PYTHON
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
#export PATH="/usr/local/opt/ruby/bin":$PATH:$GOLAND


# =============================================================================
# NAVIGATION ALIASES
# =============================================================================
# Modern ls replacement with eza
alias ls="eza --icons"
alias ll="eza -la --icons --git" # detailed list with git status
alias lt="eza --tree --icons"    # tree view
alias lsc="eza -a --icons"       # show hidden files
alias l.="eza -d .* --icons"     # list hidden files only

# Traditional ls fallbacks (if you need them)
alias lls="ls -laGF" # original ll
alias lsoriginal="/bin/ls"

# Directory navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~="cd ~"
alias -- -="cd -"  # Go to previous directory
alias cd..='cd ..' # fix spacing issue

# Quick access directories
alias desktop='cd ~/Desktop'
alias downloads='cd ~/Downloads'
alias docs='cd ~/Documents'

# file/directory operation
alias rmf="rm -i"  # request confirmation before deleting
alias rmd="rm -iR"  # request confirmation before deleting

# =============================================================================
# GIT ALIASES
# =============================================================================
# Basic git operations
alias ginit="git init ."
alias gadd="git add ."
alias gc="git commit -m 'Initial Commit'"

# Enhanced git workflow
alias gst="git status"
alias gd="git diff"
alias gl="git log --oneline --graph --decorate --all"
alias gb="git branch"
alias gco="git checkout"
alias gcb="git checkout -b"  # Create and checkout new branch
alias gp="git push"
alias gpl="git pull"
alias gm="git merge"
alias gf="git fetch"
alias ga="git add"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias grs="git reset"
alias grh="git reset --hard"
alias gcp="git cherry-pick"


# =============================================================================
# DEVELOPMENT ALIASES
# =============================================================================
# IDE/Editor
alias code="open -a /Applications/Visual\ Studio\ Code.app"
alias sc="code $HOME/.zshrc"

# Development directories
alias dev="cd ~/dev"
alias devgo="cd ~/dev/go/src"
alias devgol="cd ~/dev/GolandProjects"
alias devpy="cd ~/dev/python"
alias devnode="cd ~/dev/node"
alias devreact="cd ~/dev/react"
alias devlaravel="cd ~/dev/laravel"
alias devex="cd ~/dev/Exercism"

# Project shortcuts
alias moveflows="cd ~/dev/react/moveflows-front"

# Node.js/npm/yarn shortcuts
alias ni="npm install"
alias ns="npm start"
alias nt="npm test"
alias nb="npm run build"
alias nd="npm run dev"
alias yi="yarn install"
alias ys="yarn start"
alias yt="yarn test"
alias yb="yarn build"
alias yd="yarn dev"

# =============================================================================
# SHELL CONFIGURATION & GENERAL ALIASES
# =============================================================================
# History settings
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY

# Auto-completion
autoload -U compinit && compinit
setopt AUTO_MENU
setopt COMPLETE_IN_WORD

# Prompt (simplified for Warp)
# PS1='%d %# '  # Commented out - Warp handles the prompt

# File associations
alias -s {cs,go,html,json,md,py,ts,txt,xml}=code # open files with filename only

# Modern command-line tools
alias cat="bat"                # syntax-highlighted cat
alias grep="rg"                # faster grep with better output
alias curl="curlie"             # modern curl with better syntax
alias rm="trash"               # safe file deletion to trash
alias top="btm"                # modern system monitor
alias ps="procs"               # modern process viewer

# Utility aliases
alias reload='source ~/.zshrc'
alias myip='curl http://ipecho.net/plain; echo'
alias weather='curl wttr.in'
alias ports='lsof -i -P -n | grep LISTEN'

# Dotfiles management
alias dotfiles='cd ~/dotfiles'
alias dotsync='cd ~/dotfiles && git pull origin main && echo "✅ Dotfiles synced!"'
alias dotpush='cd ~/dotfiles && git add . && git commit -m "Update dotfiles" && git push origin main'

# Brewfile management (development tools)
alias brewsync='cd ~/dotfiles && brew bundle install && echo "✅ Development tools synced!"'
alias brewcheck='cd ~/dotfiles && brew bundle check'

# Node.js global packages
alias nodesetup='cd ~/dotfiles && ./install-node-globals.sh'

# Traditional command fallbacks (if you need them)
alias catoriginal="/bin/cat"
alias greporiginal="/usr/bin/grep"
alias curloriginal="/usr/bin/curl"
alias rmoriginal="/bin/rm"
alias toporiginal="/usr/bin/top"
alias psoriginal="/bin/ps"

eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"


# FIDDLER_EVERYWHERE_SCRIPT_START
if [ -n "$FE_STARTED" ] && [ -s '/Applications/Fiddler Everywhere.app/Contents/Resources/app/out/assets/scripts/startup-mac.sh' ] && [ "$STARTUP_SOURCED" != "true" ] ; then
    source '/Applications/Fiddler Everywhere.app/Contents/Resources/app/out/assets/scripts/startup-mac.sh'
    STARTUP_SOURCED="true"
fi
# FIDDLER_EVERYWHERE_SCRIPT_END

# =============================================================================
# ADDITIONAL PATH EXPORTS
# =============================================================================
export PATH="$PATH:./vendor/bin"
export PATH="$PATH:/Users/gideon/dev/laravel/moveflow-laravel/laravel/vendor/bin"
