# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="ericduran"

# Example aliases
alias ohmyzsh="subl ~/.oh-my-zsh"
alias finder-hidden-hide="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"
alias finder-hidden-show="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
alias drupalcs="phpcs --standard=Drupal --extensions=module,inc,install,test,profile,theme"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"
#COMPLETION_WAITING_DOTS="true"

plugins=(git github bundler)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
alias ll="ls -la"
alias n="cd ~/Sites/nbcu/Publisher7/docroot"
alias h="cd ~/Sites/heroku"
#alias g="cd ~/Sites/github"
alias copy="pbcopy"
alias tunnel="ssh utils -R \*:8081:localhost:80 -g -N -n &"
alias tunnel-kill="pkill ssh"

# Publisher Alias
alias pub-build="bundle install &rake build_local"



alias mongod.start="launchctl start homebrew.mxcl.mongodb"
alias mongod.stop="launchctl stop homebrew.mxcl.mongodb"

alias memcached.start="launchctl start homebrew.mxcl.memcached.plist"
alias memcached.stop="launchctl stop homebrew.mxcl.memcached.plist"


#Dev Tools Development
alias start-devtools="cd ~/Workspace/chromium/blink/Source/devtools && python -m SimpleHTTPServer"
alias start-devtools-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary --remote-debugging-port=9222 --no-first-run --remote-debugging-frontend='http://localhost:8000/front_end/inspector.html' --user-data-dir=Workspace/chromium/chromeServerProfile"

#exports
export GEM_HOME="/Users/ericduran/.gem"
export EDITOR="vi"
export GOROOT=/usr/local/Cellar/go/1.2/libexec
export GOPATH=$HOME/go

# Extra directories in path.
pathdirs=(
    /Applications/Splunk/bin
    /usr/local/opt/ruby/bin
    $(brew --prefix php55)/bin #php bin
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
source ~/.gem/gems/tmuxinator-0.6.7/completion/tmuxinator.zsh
source ~/.fzf.zsh
