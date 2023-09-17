#!/usr/bin/env zsh

# Set the script_name and install_path
script_name="magic-cli-nav.sh"
install_path="$HOME/.local/bin/$script_name"

# Check if magic-cli-nav is installed
if [ -f "$install_path" ]; then
  # Remove the script
  rm "$install_path"
  if [ $? -eq 0 ]; then
    echo "magic-cli-nav has been removed from $install_path"

    # Check if the source line exists in .zshrc
    if grep -qF "source $install_path" "$HOME/.zshrc"; then
      # Remove the source line from .zshrc
      sed -i '' "/# Added by magic-cli-nav install script/d" "$HOME/.zshrc"
      sed -i '' "/source $install_path/d" "$HOME/.zshrc"
      
      echo "Removed source line from $HOME/.zshrc"
    fi

    echo "magic-cli-nav has been uninstalled successfully!"
  else
    echo "Failed to remove magic-cli-nav from $install_path"
  fi
else
  echo "magic-cli-nav is not installed at $install_path"
fi
