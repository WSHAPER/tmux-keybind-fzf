#!/bin/bash
# Clean tmux keybinding fuzzy search using tmux popup

tmux display-popup -E -w 80% -h 80% "tmux list-keys -T prefix | \
  grep -v 'display-menu' | \
  grep -v 'if-shell' | \
  awk '{
    key = \$4
    cmd = \"\"
    for (i=5; i<=NF; i++) cmd = cmd \" \" \$i
    gsub(/^ +/, \"\", cmd)
    if (length(cmd) < 80) {
      printf \"%-12s  %s\n\", key, cmd
    }
  }' | \
  sort -u | \
  fzf --header='Tmux Keybindings (prefix +)' \
      --preview-window=hidden \
      --layout=reverse"
