# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="ericduran"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"
plugins=(git github)

# Alias: Actions
alias ohmyzsh="atom ~/.oh-my-zsh"
alias s="source ~/.zshrc"
alias finder-hidden-hide="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"
alias finder-hidden-show="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"

source $ZSH/oh-my-zsh.sh

# Alias: Networking
alias wifi-list="nmcli dev wifi"

# Alias...
alias ll="ls -la"
alias g="hub"
alias copy="pbcopy"
alias tunnel="ssh utils -R \*:8081:localhost:80 -g -N -n &"
alias tunnel-kill="pkill ssh"
alias dc="docker-compose"
alias vi="nvim"
alias vim="nvim"

#Alias: Dev Tools Development
alias start-devtools="cd ~/Workspace/chromium/blink/Source/devtools && python -m SimpleHTTPServer"
alias start-devtools-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary --remote-debugging-port=9222 --no-first-run --remote-debugging-frontend='http://localhost:8000/front_end/inspector.html' --user-data-dir=Workspace/chromium/chromeServerProfile"

#exports
export EDITOR="vi"
export GOPATH=$HOME/Workspace/go

# Extra directories in path.
# TODO: Fix this, this is a problem when having different shell level
#       aka the paths keep getting appended every level.
#       Since I use zsh inside of tmux inside of zshl, I'm always at least
#       2 levels deep. This is just ugly.
pathdirs=(
    /usr/local/share/npm/bin #node npm
    ~/Workspace/go/bin
    /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin
    ~/Workspace/chrome/depot_tools
    ~/.cargo/bin
)

# TODO: Check levels
for dir in $pathdirs; do
    if [ -d $dir ]; then
        path+=$dir
    fi
done

# Make sure /usr/local/bin is always first.
PATH="/usr/local/bin:$PATH"

fpath=(
  /usr/local/share/zsh/site-functions
  $fpath
)

# Usage: ll | col 3
# An easy way to just print a specific col from the output
function col() {
  awk -v column=$1 '{print $column}'
}
