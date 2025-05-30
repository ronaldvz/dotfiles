alias ..='cd ..'

alias yr='yabai --stop-service && yabai --start-service'

#ls aliases
alias ls='ls -lhGs'
alias la='ls -lhGsa'
alias ll='ls -l'
alias lsa='ls -all'

#git aliases
alias g='git'
alias gc='git commit'
alias gs='git status'
alias gd='git diff'
alias ga='git add'
alias gp='git push'
alias gl='git log -n5'

#import dirs
alias dev='cd ~/development; ls'
alias pr='cd ~/Projects; ls'

alias cl='clear'

alias j6="export JAVA_HOME=`/usr/libexec/java_home -v 1.6`; echo 'JAVA_HOME has been set to `/usr/libexec/java_home -v 1.6`'"
alias j7="export JAVA_HOME=`/usr/libexec/java_home -v 1.7`; echo 'JAVA_HOME has been set to `/usr/libexec/java_home -v 1.7`'"

alias zc='vim ~/.zshrc ~/.zsh/*'

alias dot='cd ~/.dotfiles; ls'

alias ta='tmux attach -t'
alias td='tmux detach'
alias tl='tmux list-sessions'

alias doc='cd ~/Documents; ls'

alias rake='noglob rake'
