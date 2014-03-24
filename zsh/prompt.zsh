if (( C != 256 )); then
# ###
# no full color support, set simple prompt so we dont blow up
# ###

PROMPT="%n@%m: %1~> "

else
# ###
# there is full color support, build a more complex prompt
# ###

# setup 256 color spectrum
source "$ZSH/spectrum.zsh"

# introduce git-prompt
#source "$ZSH/git-prompt/git-prompt.sh"

function git_prompt_short_sha()  { SHA=$(git rev-parse --short HEAD 2> /dev/null) && echo "$SHA" }
function git_prompt_long_sha()  { SHA=$(git rev-parse HEAD 2> /dev/null) && echo "$SHA" }

# primary color
local p="%{$FX[reset]$FG[243]%}"
local dir="%{$FX[reset]$FG[012]%}%d"
local sys="[%{$FX[reset]$FG[005]%}%n@%m${p}]"
local jobs="%1(j.(%{$FX[reset]$FG[197]%}%j job%2(j.s.)${p})-.)"
local time="[%*]"

local last="%(?..%{$FX[reset]$FG[203]%}%??${p}:)"
local hist="%{$FX[reset]$FG[220]%}%!!"
local priv="%{$FX[reset]$FG[245]%}%#"

# Use zshcontrib's vcs_info to get information about any current version control systems.
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' use-prompt-escapes true
zstyle ':vcs_info:*' stagedstr "%{$FX[reset]$FG[082]%}+"
zstyle ':vcs_info:*' unstagedstr "%{$FX[reset]$FG[160]%}~"
zstyle ':vcs_info:*' branchformat "%b@%r"
zstyle ':vcs_info:*' formats " [%{$FX[reset]$FG[222]%}%s:%b %c%u]"
zstyle ':vcs_info:(git|hg):*' formats " [%{$FX[reset]$FG[220]%}%s:%b@%7>>%i%>> %c%u${p}]"

local vcsi="\${vcs_info_msg_0_}"

PROMPT="${p}${dir}${p}${vcsi} ${p}${sys} ${p}${time} ${jobs}
${p}(${last}${p}${hist}${p}${priv}${p})%B->%b %{$FX[reset]%}"



# set colors for listings
source $ZSH/ls_colors_256.zsh
fi
