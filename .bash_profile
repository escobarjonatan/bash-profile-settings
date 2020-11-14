# ENVIRONMENT VARIABLES
# PATH variable, configurated to work with npm and homebrew
export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:~/bin:$PATH

# ALIAS
# Reload bash_profile for wanting a change to take effect
alias rebash="source ~/.bash_profile"
# Opens bash_profile with VS Code
alias mybash="code ~/.bash_profile"
# Cd back one directory
alias ..="cd ../"
# Tries to run a git pull on all git projects
# Assumption: You have a git folder in your root directory
alias pullall="find ~/git -maxdepth 3 -name '.git' -type d -print0 2> /dev/null | xargs -0 -I{} bash -c 'cd {}/..; pwd; git rev-parse --abbrev-ref HEAD; git pull; git remote prune origin; echo; echo'"
# Short for git pull on a Git directory
alias gp="git pull"
# Open Chrome browser with security disabled
alias unsafe='open -n -a /Applications/Google\ Chrome.app "https://localhost:3000/s?searchTerm=nike" "https://www.jcpenney.com/s?searchTerm=nike" --args --user-data-dir="/tmp/someFolderName" --disable-web-security --ignore-certificate-errors &> /dev/null'
# Shows current Git tags
alias showtags="git log --date-order --graph --tags --simplify-by-decoration --pretty=format:'%ai %h %d'"
# Deletes node modules of current project and installs after
alias nodereset="rm -rf node_modules && npm install"
# Go back to the Git root directory
alias projects="cd ~/git"
# Reset sound adjustment
alias audioreset="sudo killall coreaudiod"

# FUNCTIONS
# List all items when using cd
cd() { builtin cd "$@"; ls; }
# Grabs headers from web page
httpHeaders () { /usr/bin/curl -I -L $@ ; }

# Powerline Installation instructions
# https://medium.com/@ITZDERR/how-to-install-powerline-to-pimp-your-bash-prompt-for-mac-9b82b03b1c02
# Powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
source /usr/local/lib/python3.9/site-packages/powerline/bindings/bash/powerline.sh