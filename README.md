#vim
1. install vundle plugin manager to ~/.vim/bundle/ directory
1. overwrite ~/.vimrc with .vimrc
1. open vim and input PluginInstall in command mode
1. after installation success, enjoy you vim journey :-P

# vim-tmux
1. install powerline-status
1. append ". /usr/local/lib/python2.7/dist-packages/powerline/bindings/bash/powerline.sh" to your .bashrc
1. reboot the system and open a new gnome-terminal to make sure powerline-status works OK.
1. install the patched font from https://github.com/powerline/fonts.git to correct display pattern issues
1. download tmux theme from https://github.com/gpakosz/.tmux and checkout into the branch identical to your tmux 1ersion
1. you need to upgrade your tmux (use 3rd party ppa) in Ubuntu 14.04 as it is v1.8 and too old to support the gpakosz's theme
1. install the theme as the gpakosz's manual
1. ensure the $TERM env is set to "screen-256color"
1. enjoy your day :-)

#tips:
1. you may add "setw -g mode-keys vi" to the config to fix the copy-mode key 'v' problem
1. nerdtree source may not work correctly, so use the one within trinity instead

#reference:
1. http://www.jianshu.com/p/d22b63ba0849
1. http://cenalulu.github.io/linux/tmux/
1. http://jay75328.blogspot.tw/2015/05/vim-source-insight.html
1. http://cscope.sourceforge.net/cscope_vim_tutorial.html
