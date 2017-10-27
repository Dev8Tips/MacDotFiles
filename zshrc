##############################################################################
# oh-my-zsh setup
##############################################################################

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh

# Set name of the theme to load.
# Look in $ZSH/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

export ZSH_THEME="emotty"
#export ZSH_THEME="gozilla"
#export ZSH_THEME="fino"
#export ZSH_THEME="takashiyoshida"
#export ZSH_THEME="random"
#export ZSH_THEME="jnrowe"
#export ZSH_THEME="half-life"
#export ZSH_THEME="inception"
#export ZSH_THEME="pygmalion"
#export ZSH_THEME="powerlevel9k/powerlevel9k"
#POWERLEVEL9K_MODE='awesome-fontconfig'

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/oh-my-zsh/plugins/*)
plugins=(emotty google-cloud-sdk git colored-man colorize github jira vagrant virtualenv pip python brew osx zsh-syntax-highlighting battery gradle ant compleat dirpersist gem ssh-agent cloudapp ruby textmate sublime)

source $ZSH/oh-my-zsh.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
export PATH="/usr/local/sbin:$PATH"
