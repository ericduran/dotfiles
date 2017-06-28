dotfiles
========

Dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/)


Setup:

 - Mac: `$ brew install stow`
 - Linux: `$ sudo apt-get install stow`


```
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone git@github.com:ericduran/dotfiles.git ~/dotfiles
cd dotfiles
stow home
stow tmux
stow git
stow karabiner

# Change to zsh
chsh -s /bin/zsh
```
