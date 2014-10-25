dotfiles
========

Dotfiles castle managed with [homesick](https://github.com/technicalpickles/homesick)

```
#new setup
sudo chown -R $USER /Library/Ruby /Library/Perl /Library/Python
gem install homesick
```


```
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
homesick clone git@github.com:ericduran/dotfiles.git
homesick link dotfiles
```
