## directory changing settings
setopt AUTO_CD                      # automatically cd in to directories if it's not a command name.
setopt AUTO_PUSHD                   # automatically push visited directories to the stack.
setopt PUSHD_IGNORE_DUPS            # ...and don't duplicate them.

setopt NO_BEEP                      # never, ever, beep at me
setopt LOCAL_OPTIONS                # options inside functions stay inside functions
setopt MULTI_BYTE                   # respect multibyte characters inside strings
setopt PROMPT_SUBST                 # expand parameters within the prompt

## history settings
if [ -z $HISTFILE ]; then
    export HISTFILE=$HOME/.zsh_history
fi
export HISTSIZE=10000
export SAVEHIST=10000
setopt APPEND_HISTORY               # don't overwrite history but append
setopt HIST_VERIFY                  # verify commands that use history expansion
setopt EXTENDED_HISTORY             # remember extended history
setopt INC_APPEND_HISTORY           # incrementally append commands
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS             # ignore duplication command history list
setopt HIST_IGNORE_SPACE            # ignore commands with leading spaces
setopt SHARE_HISTORY                # share command history data

## completion settings
unsetopt MENU_COMPLETE              # do not autoselect the first completion entry
unsetopt FLOWCONTROL                # disable flow control characters
setopt AUTO_MENU                    # show completion menu on succesive tab press
setopt COMPLETE_IN_WORD
setopt ALWAYS_TO_END
