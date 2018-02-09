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
alias drupalcs="phpcs --standard=Drupal --extensions=module,inc,install,test,profile,theme"

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
alias vim="nvim"

#Dev Tools Development
alias start-devtools="cd ~/Workspace/chromium/blink/Source/devtools && python -m SimpleHTTPServer"
alias start-devtools-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary --remote-debugging-port=9222 --no-first-run --remote-debugging-frontend='http://localhost:8000/front_end/inspector.html' --user-data-dir=Workspace/chromium/chromeServerProfile"

#exports
export EDITOR="vi"
export GOPATH=$HOME/Workspace/go

# Extra directories in path.
# TODO: Fix this, this is a problem when having different shell level
#       aka the paths keep getting appended every level
pathdirs=(
    /usr/local/share/npm/bin #node npm
    /usr/local/opt/go@1.8/libexec/bin #add to patch because it's not the default brew version
    ~/Workspace/go/bin
    /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin
    ~/Workspace/chrome/depot_tools
    ~/.cargo/bin
)

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

function col() {
  awk -v column=$1 '{print $column}'
}
#source ~/.gem/gems/tmuxinator-0.6.7/completion/tmuxinator.zsh
#source ~/.fzf.zsh
