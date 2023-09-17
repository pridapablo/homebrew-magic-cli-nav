#!/usr/bin/env zsh

if ! typeset -f l > /dev/null; then

# Define l to list directories with numbers prefix (up to 9 directories in a folder)
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
    local cmd=$(printf 'cd -- "%s" && l' "$dir")
    alias $num="$cmd" && (( num++ ))
  done
}

# Alias refresh
# Make directory and update
mkd() {
  mkdir "$@"
  switch_dir
}

# Remove directory and update
rmd() {
  rmdir "$@"
  switch_dir
}

# Change directory and update
chd() {
  cd "$@"
  switch_dir
}

## new session
switch_dir

fi