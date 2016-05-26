#
# host.zsh - Host-specific, zsh-specific configurations
#
# Author
#   Jake Zimmerman <jake@zimmerman.io>
#
# Usage
#   Source this file.
#
# Notes
#   Most of the options here are for fzf, which is an amazing program. I can't
#   do it justice with words. You should go here[1] and watch the gif to have your
#   mind blown.
#
#   [1]: https://github.com/junegunn/fzf
#
# TODOs
#   - n/a


# Configure fzf to ignore files that aren't tracked by Git
# (depends on ag, the_silver_searcher, being installed).
export FZF_DEFAULT_COMMAND='ag -l -g ""'
export FZF_CTRL_T_COMMAND='ag -l -g ""'

# The fzf.zsh file is autogenerated by fzf. That's why there are no comments if
# you look in it.
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Modify fzf keydings to match ctrlp.vim
bindkey '^P' fzf-file-widget
bindkey '^N' fzf-cd-widget
bindkey -M vicmd '/' fzf-history-widget
bindkey '^[/' fzf-history-widget
