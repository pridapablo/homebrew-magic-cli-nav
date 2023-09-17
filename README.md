# magic-cli-nav

**magic-cli-nav** is a command-line navigation tool for Zsh that allows you to easily switch between directories using numeric prefixes. It automatically generates aliases for any directory you navigate to, making it quicker to navigate through your file system.

## Installation

To install **magic-cli-nav**, use homebrew:

```zsh
brew tap pridapablo/taps
brew install magicclinav
```

## Usage
You can start using magic-cli-nav immediately after you source the script from your .zshrc file (find instructions right after installation). 
Here are some key features:

**Use the 'lsd' command to list directories with numeric prefixes.**
```zsh
lsd
```

**Use the numeric prefixes (1-9) to quickly switch to a directory.**
```zsh
2
```

**Note that when you switch directories using the numeric aliases, the new prefixes will be shown automatically.**

<img width="180" alt="image" src="https://github.com/pridapablo/magic-cli-nav/assets/89087453/c73bdf91-361b-49b3-b2a2-99d51a6a9e91">

The cd command is aliased to chd, which updates the numeric prefixes after changing directories. This means you can continue using the numeric prefixes even after navigating to a different directory.

You can create directories using the mkdir command, and remove directories using the rmdir command. The numeric prefixes are automatically updated.

## Uninstallation

To uninstall **magic-cli-nav**, use homebrew:

```zsh
brew uninstall magic-cli-nav
brew untap magic-cli/magic-cli
```

And remove the source line from your .zshrc file.

