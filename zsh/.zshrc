# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
export PATH=$HOME/.toolbox/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git virtualenv)
VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source $ZSH/oh-my-zsh.sh
export PATH=$PATH:/usr/local/bin:~/Library/Python/3.7/bin:~/bin
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
powerlevel9k_MODE="nerdfont-complete"
powerlevel9k_DISABLE_RPROMPT=true
powerlevel9k_PROMPT_ON_NEWLINE=false
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ll="ls -lah"
alias cleardns="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
alias desc="aws ec2 describe-instances --query 'Reservations[].Instances[].[Tags[?Key==\`Name\`] | [0].Value, InstanceId, State.Name, PublicIpAddress]' --output table"
alias ssh="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no"
alias mid="sudo plutil -convert xml1 /Library/Managed\ Preferences/andglenn/com.google.Chrome.plist && sudo sed -i -e "\"'4r /Users/andglenn/Documents/chrome.txt'\"" /Library/Managed\ Preferences/andglenn/com.google.Chrome.plist"
alias hardmid="sudo plutil -convert xml1 /Library/Managed\ Preferences/andglenn/com.google.Chrome.plist && sudo sed -i -e "\"'4r /Users/andglenn/Documents/chromeHard.txt'\"" /Library/Managed\ Preferences/andglenn/com.google.Chrome.plist"
alias mcurl="curl $@ -L --cookie ~/.midway/cookie --cookie-jar ~/.midway/cookie"
alias python='python3'
#alias pip='pip3'
source /usr/local/bin/virtualenvwrapper.sh
source $ZSH/oh-my-zsh.sh
source ~/bin/functions.sh
#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
powerlevel10k_SHORTEN_DIR_LENGTH=2
#powerlevel9k_SHORTEN_STRATEGY="truncate_middle"
#powerlevel9k_CONTEXT_DEFAULT_BACKGROUND="000"
#powerlevel9k_CONTEXT_DEFAULT_FOREGROUND="007"
#powerlevel9k_DIR_HOME_BACKGROUND="001"
#powerlevel9k_DIR_HOME_FOREGROUND="000"
#powerlevel9k_DIR_HOME_SUBFOLDER_BACKGROUND="001"
#powerlevel9k_DIR_HOME_SUBFOLDER_FOREGROUND="000"
#powerlevel9k_NODE_VERSION_BACKGROUND="black"
#powerlevel9k_NODE_VERSION_FOREGROUND="007"
#powerlevel9k_NODE_VERSION_VISUAL_IDENTIFIER_COLOR="002"
#powerlevel9k_LOAD_CRITICAL_BACKGROUND="black"
#powerlevel9k_LOAD_WARNING_BACKGROUND="black"
#powerlevel9k_LOAD_NORMAL_BACKGROUND="black"
#powerlevel9k_LOAD_CRITICAL_FOREGROUND="007"
#powerlevel9k_LOAD_WARNING_FOREGROUND="007"
#powerlevel9k_LOAD_NORMAL_FOREGROUND="007"
#powerlevel9k_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
#powerlevel9k_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
#powerlevel9k_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"
#powerlevel9k_TIME_BACKGROUND="black"
#powerlevel9k_TIME_FOREGROUND="007"
#powerlevel9k_TIME_FORMAT="%D{%H:%M} %F{003}\uF017"
#powerlevel9k_LEFT_PROMPT_ELEMENTS=('context' 'dir' 'vcs')
#powerlevel9k_LEFT_SEGMENT_SEPARATOR=$'\uE0B0'
#powerlevel9k_RIGHT_SEGMENT_SEPARATOR=$'\uE0B2'
#
powerlevel9k_SHORTEN_DIR_LENGTH=2
powerlevel9k_LEFT_PROMPT_ELEMENTS=(dir virtualenv vcs)
powerlevel9k_VIRTUALENV_BACKGROUND='cyan'

VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
export PATH=$PATH:/usr/local/bin  # MIDWAY PATH: Path changed for ssh

# added by travis gem
[ -f /Users/andglenn/.travis/travis.sh ] && source /Users/andglenn/.travis/travis.sh
export PATH=$PATH:/usr/local/bin  # MIDWAY PATH: Path changed for ssh

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/andglenn/.nvm/versions/node/v6.10.3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/andglenn/.nvm/versions/node/v6.10.3/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/andglenn/.nvm/versions/node/v6.10.3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/andglenn/.nvm/versions/node/v6.10.3/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# To customize prompt, run `p10k configure` or edit ~/development/.local/.p10k.zsh.
[[ ! -f ~/development/.local/.p10k.zsh ]] || source ~/development/.local/.p10k.zsh
