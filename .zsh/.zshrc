# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:/usr/local/go/bin:/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$HOME/.cargo/bin:$PATH

# Have to export this so tmux can find powerline
export POWEROOT=/home/linuxbrew/.linuxbrew/lib/python3.6/site-packages/powerline

# Path to your oh-my-zsh installation.
export ZSH=/home/cm1/.oh-my-zsh
export UPDATE_ZSH_DAYS=13
# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8
# export ARCHFLAGS="-arch x86_64"
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# No theme so I can use powerline as my zsh theme
ZSH_THEME="classyTouch"

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  colorize
  history
  z
  git
  perl
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

alias zconfig="vim $ZDOTDIR/.zshrc"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias c='clear'
alias g='git'
alias alert='notify-send --urgency-low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias pip='pip3'
alias python='python3'
alias poweroot='cd $HOME/.local/lib/python3.6/site-packages/powerline'
alias discord='nohup discord > $HOME/.custom_out/nohup.out'
alias o="google-chrome"
alias cc="pygmentize -g"
alias poly='$HOME/.config/polybar/launch'
alias postman='$HOME/.custom_bin/Postman/app/Postman &'
alias peak_rds='ssh cm1@rice-dev.peakpayment.com -L 192.168.0.190:33062:national-fitness-east.csozzow7fq3v.us-east-1.rds.amazonaws.com:3306'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add NVM to fpath for completion
fpath+=('/home/cm1/.nvm/versions/node/v10.3.0/lib/node_modules/pure-prompt/functions')

# Source ZSH powerline
# source $POWEROOT/bindings/zsh/powerline.zsh

# Commented out for powerline usage
#autoload -U promptinit; promptinit
#prompt pure
