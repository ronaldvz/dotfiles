# completion configuration
autoload -Uz compinit && compinit
#
zstyle ':completion:*' list-colors "${LS_COLORS}" # complete with same colors as ls
zstyle ':completion:*' max-errors 2 # be lenient to 2 errors
zstyle ':completion:*' completer _expand _complete _correct _approximate # completion modifiers
zstyle ':completion:*' use-cache true # use a completion cache
zstyle ':completion:*' ignore-parents pwd i # ignore the current directory in completions
zstyle ':completion:*' users off # do not complete users

zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command "ps -u `whoami` -o pid,user,comm -w -w"
