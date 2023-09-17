#!/usr/bin/env zsh

# Set magic-cli-nav_name and install_path
script_name="magic-cli-nav.sh"
install_path="$HOME/.local/bin/$script_name"

# Check if magic-cli-nav is already installed
if [ -f "$install_path" ]; then
  echo "magic-cli-nav is already installed at $install_path"
else
  # Copy magic-cli-nav to install_path
  cp "$script_name" "$install_path"
  if [ $? -eq 0 ]; then
    echo "magic-cli-nav was copied to $install_path"
    
    # Backup .zshrc file if it exists
    if [ -f "$HOME/.zshrc" ]; then
      cp "$HOME/.zshrc" "$HOME/.zshrc.backup"
    fi
    
    # Append a line to your .zshrc to source it at startup (if not already present)
    if ! grep -qF "source $install_path" "$HOME/.zshrc"; then
      echo "# Added by magic-cli-nav install script" >> "$HOME/.zshrc"
      echo "source $install_path" >> "$HOME/.zshrc"
      echo "Added source line to $HOME/.zshrc"
    else
      echo "The source line already exists in $HOME/.zshrc"
    fi
    
    echo "magic-cli-nav was installed successfully!"
  else
    echo "Failed to copy magic-cli-nav to $install_path"
  fi
fi