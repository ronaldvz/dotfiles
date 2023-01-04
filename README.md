#ronaldvz's dotfiles

This repo contains a cumulation of the .files I'm using on my machine(s).

# First things first
- `git clone https://github.com/ronaldvz/dotfiles.git ~/.dotfiles`

# Steps vim config
- `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
- `mkdir -p ~/.vim/backup ~/.vim/tmp`
- open vim
- run `:BundleInstall`


# Steps yabai
- `brew install koekeishiya/formulae/yabai`
- `brew services start yabai`
- `ln -s ~/.dotfiles/yabairc ~/.yabairc`
- `chmod +x ~/.yabairc`

# Steps skhd
- `brew install koekeishiya/formulae/skhd`
- `brew services start skhd`
- `ln -s ~/.dotfiles/skhdrc ~/.skhdrc`
- `chmod +x ~/.skhdrc`

# Steps spacebar
- 'brew install cmacrae/formulae/spacebar'
- 'brew services start spacebar`
- `brew install homebrew/cask-fonts/font-fontawesome`
- `mkdir -p ~/.config/spacebar`
- `ln -s ~/.dotfiles/spacebar/spacebarrc ~/.config/spacebar/spacebarrc`
- `chmod +x ~/.config/spacebar/spacebarrc`
- `brew services restart spacebar`
