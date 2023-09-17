#!/usr/bin/env zsh

if ! typeset -f lsd > /dev/null; then

# Define lsd to list directories with numbers prefix (up to 9 directories in a folder)
lsd(){
  local dirs=(*(N/))
  for ((i=1; i<=${#dirs[@]} && i<=9; i++)); do
    echo "${i}. ${dirs[i]}"
  done
}

# Auto alias to switch to directory (up to 9 directories)
switch_dir() {
  for i in {1..9}; do unalias $i 2>/dev/null; done
  local num=1
  local dirs=(*(N/))
  for dir in "${dirs[@]}"; do
    if (( num > 9 )); then
      break
    fi
    # Use printf to format your directory string and then use it in your alias command.
    local cmd=$(printf 'cd -- "%s" && lsd' "$dir")
    alias $num="$cmd" && (( num++ ))
  done
}

# Function to change directory
chd() {
  builtin cd "$@"
  switch_dir
}

# Alias cd to your new function
alias cd='chd'

# Alias refresh
# Make directory and update
mkd() {
  mkdir "$@"
  switch_dir
}

# Alias mkdir to new function
alias mkdir='mkd'

# Remove directory and update
rmd() {
  rmdir "$@"
  switch_dir
}

# Alias rmdir to new function
alias rmdir='rmd'

# new session
switch_dir

fi