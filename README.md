# vim-tmux
1. install powerline-status
2. append ". /usr/local/lib/python2.7/dist-packages/powerline/bindings/bash/powerline.sh" to your .bashrc
3. reboot the system and open a new gnome-terminal to make sure powerline-status works OK.
4. install the patched font from https://github.com/powerline/fonts.git to correct display pattern issues
5. download tmux theme from https://github.com/gpakosz/.tmux and checkout into the branch identical to your tmux version
6. you need to upgrade your tmux (use 3rd party ppa) in Ubuntu 14.04 as it is v1.8 and too old to support the gpakosz's theme
7. install the theme as the gpakosz's manual
8. ensure the $TERM env is set to "screen-256color"
9. enjoy your day :-)

#tips:
1. you may add "setw -g mode-keys vi" to fix copy-mode key 'v' problem

#reference:
1. http://www.jianshu.com/p/d22b63ba0849
2. http://cenalulu.github.io/linux/tmux/
