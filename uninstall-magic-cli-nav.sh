#!/usr/bin/env zsh

# Set the script_name and install_path
script_name="magic-cli-nav.sh"
install_path="$HOME/.local/bin/$script_name"

install_path_escaped=$(printf '%s\n' "$install_path" | sed -e 's/[\/&]/\\&/g')

# Check if magic-cli-nav is installed
if [ -f "$install_path" ]; then
  # Remove the script
  rm "$install_path"
  if [ $? -eq 0 ]; then
    echo "magic-cli-nav has been removed from $install_path"
  else
    echo "Failed to remove magic-cli-nav from $install_path"
  fi
fi

# Check if the source line exists in .zshrc
if grep -qF "source $install_path" "$HOME/.zshrc"; then
  # Remove the source line from .zshrc
  sed -i '' "/# Added by magic-cli-nav install script/d" "$HOME/.zshrc"
  sed -i '' "/source $install_path_escaped/d" "$HOME/.zshrc"
  
  echo "Removed source line from $HOME/.zshrc"
fi

echo "Uninstall script ran successfully!"