# magic-cli-nav

**magic-cli-nav** is a command-line navigation tool for Zsh that allows you to easily switch between directories using numeric prefixes. It automatically generates aliases for your most frequently used directories, making it quicker to navigate through your file system.

## Installation

To install **magic-cli-nav**, use homebrew:

```zsh
brew tap magic-cli/magic-cli
brew install magic-cli-nav
```

## Usage
After installation, you can start using magic-cli-nav immediately. Here are some key features:
# Use the 'lsd' command to list directories with numeric prefixes.
lsd

# Use the numeric prefixes (1-9) to quickly switch to a directory.
2

The cd command is aliased to chd, which updates the numeric prefixes after changing directories. This means you can continue using the numeric prefixes even after navigating to a different directory.

You can create directories using the mkdir command, and remove directories using the rmdir command. The numeric prefixes are automatically updated.

## Uninstallation

To uninstall **magic-cli-nav**, use homebrew:

```zsh
brew uninstall magic-cli-nav
brew untap magic-cli/magic-cli
```

Remove the magic-cli-nav script from ~/.local/bin/.
Remove the source line from your ~/.zshrc file.
Optionally, restore your ~/.zshrc file from the backup created during installation.


