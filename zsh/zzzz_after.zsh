#
# Load any custom after code
#

if [ -d $HOME/.dotfiles/_tmp/.zsh.after/ ]; then
  if [ "$(ls -A $HOME/.dotfiles/_tmp/.zsh.after/)" ]; then
    for config_file ($HOME/.dotfiles/_tmp/.zsh.after/*.zsh) source $config_file
  fi
fi
