# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/marcelo/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

# Fix Interop Error that randomly occurs in vscode terminal when using WSL2
fix_wsl2_interop() {
    for i in $(pstree -np -s $$ | grep -o -E '[0-9]+'); do
        if [[ -e "/run/WSL/${i}_interop" ]]; then
            export WSL_INTEROP=/run/WSL/${i}_interop
        fi
    done
}

export PATH=~/.config/composer/vendor/bin:$PATH

export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completioni

# Colormap
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

# ssh aliases
# ssh contass
alias cmbocaiuva="sshpass -p cts36162 ssh contass@10.251.27.2"
alias cmnavarro="sshpass -p cts36162 ssh contass@10.251.27.3"
alias cmarinos="sshpass -p cts36162 ssh contass@10.251.27.4"
alias cmbhecid="sshpass -p cts36162 ssh contass@10.251.27.5"
alias pmcristalia="sshpass -p cts36162 ssh contass@10.251.27.6"
alias pmlagoadospatos="sshpass -p cts36162 ssh contass@10.251.27.14"
alias pmsaofrancisco="sshpass -p cts36162 ssh contass@10.251.27.7"
alias pmsaojoaodaponte="sshpass -p cts36162 ssh contass@10.251.27.8"
alias cmmoc="sshpass -p cts36162 ssh contass@10.250.30.27"
alias cmcapitaoeneas="sshpass -p cts36162 ssh contass@10.251.27.12"
alias pmibiracatu="sshpass -p cts36162 ssh contass@10.251.27.15"
alias pmitacambira="sshpass -p cts36162 ssh contass@10.251.27.16"
alias e-cidade="sshpass -p cts36162 ssh contass@10.250.30.10"
alias teste="sshpass -p cts36162 ssh contass@10.250.30.11"
alias transparencia="sshpass -p cts36162 ssh contass@10.250.30.12"
alias cmuba="sshpass -p cts36162 ssh contass@10.251.27.34"
alias pmverdelandia="sshpass -p cts36162 ssh contass@10.251.27.40"
alias pmvarzelandia="sshpass -p cts36162 ssh contass@10.251.27.53"
alias pmluislandia="sshpass -p cts36162 ssh contass@10.251.27.56"
alias pmclarodospocoes="sshpass -p cts36162 ssh contass@10.251.27.52"
alias prevmoc="sshpass -p cts36162 ssh ecidade@10.251.27.45"
alias cisaje="sshpass -p cts36162 ssh contass@10.251.27.47"
alias manutencao="sshpass -p cts36162 ssh contass@10.250.30.19"
alias pmpirapora="sshpass -p cts36162 ssh contass@10.251.27.57"
alias prefeituras="sshpass -p cts36162 ssh contass@10.250.30.23"
alias mctrans="sshpass -p cts36162 ssh ecidade@10.251.27.64"
alias cmpirapora="sshpass -p cts36162 ssh contass@10.251.27.65"
alias prefeituras2="sshpass -p cts36162 ssh contass@10.250.30.24"
alias pmnovaporteirinha="sshpass -p cts36162 ssh contass@10.251.27.92"
alias pmsaoromao="sshpass -p cts36162 ssh contass@177.128.38.22"
alias pmburitizeiro="sshpass -p cts36162 ssh contass@pmburitizeiro.contassconsultoria.com.br"
alias gitlab="sshpass -p cts36162 ssh contass@10.250.30.15"

# ssh first
function sisprom() {
  SSHPASS='njH8)m%R@22' sshpass -e ssh -p 33341 first@172.28.4.62
}

# git aliases
function gch() {
	git checkout .
}
alias delete-local-branches="git branch --merged | egrep -v \"(^\*|master|dev)\" | xargs git branch -d"

alias java8='export JAVA_HOME=/local/java/jdk1.8.0_51'
alias java7='export JAVA_HOME=/local/java/jdk1.7.0_79'
alias java6='export JAVA_HOME=/local/java/jdk1.6.0_31'

alias work="cd $HOME/workspace/"

alias s="sudo su"

# Not all servers support rxvt-univode-256color,
# use something safe instead
alias ssh="TERM=xterm ssh"

alias gu="git up"
alias gcd="git checkout develop"
alias gds="git diff --staged"
alias gc-="git checkout -"
alias glg="git log --stat --show-signature"

alias yst="yadm status"
alias ya="yadm add"
alias yd="yadm diff"
alias yds="yadm diff --staged"
alias yc="yadm commit"
alias yp="yadm push"

# docker aliases
alias d="docker"
alias dps="docker ps"

LFILE="/etc/*-release"
MFILE="/System/Library/CoreServices/SystemVersion.plist"

# find out which distribution we are running on
LFILE="/etc/*-release"
MFILE="/System/Library/CoreServices/SystemVersion.plist"
if [[ -f $LFILE ]]; then
  _distro=$(awk '/^ID=/' /etc/*-release | awk -F'=' '{ print tolower($2) }')
elif [[ -f $MFILE ]]; then
  _distro="macos"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
