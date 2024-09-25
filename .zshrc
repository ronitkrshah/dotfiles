# History
HISTSIZE=10000
HISTFILE=$HOME/.zsh_history
SAVEHIST=10000

# Using Antigen to manage zsh plugins
source $HOME/.config/antigen/antigen.zsh
antigen init $HOME/.config/antigen/antigenrc

# ENV PATHS
LBIN=$HOME/Bin
ANDROID=$LBIN/android

export PATH=$LBIN/nvim/bin:$PATH
export PATH=$LBIN/jdk/bin:$PATH
export PATH=$LBIN/node/bin:$PATH
export PATH=$ANDROID/platform-tools:$PATH

# Alias
alias adb="sudo adb"
alias vi=nvim
alias dotfiles="git --git-dir=$HOME/Documents/dotfiles --work-tree=$HOME"

# Fancy Stuff
neofetch

