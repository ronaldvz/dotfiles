#ronaldvz's dotfiles

This repo contains a cumulation of the .files I'm using on my machine(s). Recently I've started doing more and more programming without the IDE's I'v been used to. I'm trying to get used to a more console-based way of programming; meaning that my .files are getting more important. 

##How to get this working

* git clone http://github.com/ronaldvz/dotfiles ~/.dotfiles

* ln -s ~/.dotfiles/bash_profile ~/.bash_profile
* source ~/.bash_profile
* ln -s ~/.dotfiles/vimrc ~/.vimrc

* git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
* Run vim and type :BundleInstall


###Iterm2 colors: 
* git clone https://github.com/altercation/solarized.git
* import the solarized dark theme into color presets of iterm2
