# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# History
HISTSIZE=10000
HISTFILE=$HOME/.zsh_history
SAVEHIST=10000

# Using Antigen to manage zsh plugins
source $HOME/.config/antigen/antigen.zsh
antigen init $HOME/.config/antigen/antigenrc

# Alias
alias vi=nvim
alias ls="eza --icons=always"
alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias webcam="scrcpy --video-source=camera --camera-id=1 --no-audio --v4l2-sink=/dev/video0 --no-video-playback --max-size=2440 --video-bit-rate=20M"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Use android as webcam
# Link -> https://filmsbykris.com/scripts/MyNotes/2025/notes/Android%20Webcam%20with%20scrcpy.txt
