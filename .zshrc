if [[ "$(tty)" = "/dev/tty1" ]]; then   
	pgrep bspwm || startx
fi

# figlet -c -k -t "GET SHIT DONE"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/jkt/.oh-my-zsh"
export _JAVA_AWT_WM_NONREPARENTING=1
export CHROME_EXECUTABLE=google-chrome-stable
export ANDROID_HOME=$HOME/Android/Sdk 
export JUPYTERLAB_DIR=$HOME/.local/share/jupyter/lab
export GOOGLE_APPLICATION_CREDENTIALS=$HOME/bannies4-35d59d063177.json

path+=('/home/jkt/Development/flutter/bin')
path+=('/usr/bin/clingo')

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting virtualenv)

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR=nvim
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

alias nv="nvim"
alias emulator="Android/Sdk/emulator/emulator"
alias jn="jupyter-notebook"
alias z="zathura --fork"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
