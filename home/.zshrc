# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="ericduran"

# Example aliases
alias ohmyzsh="atom ~/.oh-my-zsh"
alias finder-hidden-hide="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"
alias finder-hidden-show="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
alias drupalcs="phpcs --standard=Drupal --extensions=module,inc,install,test,profile,theme"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

plugins=(git github)

source $ZSH/oh-my-zsh.sh

# Alias...
alias ll="ls -la"
alias g="hub"
alias copy="pbcopy"
alias tunnel="ssh utils -R \*:8081:localhost:80 -g -N -n &"
alias tunnel-kill="pkill ssh"
alias dc="docker-compose"

#Dev Tools Development
alias start-devtools="cd ~/Workspace/chromium/blink/Source/devtools && python -m SimpleHTTPServer"
alias start-devtools-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary --remote-debugging-port=9222 --no-first-run --remote-debugging-frontend='http://localhost:8000/front_end/inspector.html' --user-data-dir=Workspace/chromium/chromeServerProfile"

#exports
export EDITOR="vi"
export GOROOT=/usr/local/Cellar/go/1.2/libexec
export GOPATH=$HOME/go

# Extra directories in path.
pathdirs=(
    /Applications/Splunk/bin
    ~/androidsdk/platform-tools
    /usr/local/share/npm/bin #node npm
    ~/Workspace/chromium/depot_tools
    "/Applications/Android Studio.app/sdk/platform-tools"
    ~/go/bin
)

for dir in $pathdirs; do
    if [ -d $dir ]; then
        path+=$dir
    fi
done

# Make sure /usr/local/bin is always first.
PATH="/usr/local/bin:$PATH"

fpath=(/usr/local/share/zsh/site-functions $fpath)
#source ~/.gem/gems/tmuxinator-0.6.7/completion/tmuxinator.zsh
#source ~/.fzf.zsh
