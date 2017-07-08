#
# Load any user customizations prior to load
#

if [ -d $HOME/.dotfiles/_tmp/.zsh.before/ ]; then
  if [ "$(ls -A $HOME/.dotfiles/_tmp/.zsh.before/)" ]; then
    for config_file ($HOME/.dotfiles/_tmp/zsh.before/*.zsh) source $config_file
  fi
fi
