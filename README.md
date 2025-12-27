# tmux-keybind-fzf

Fuzzy search for tmux keybindings using fzf - similar to NvChad's keymap search.

## Installation

1. Copy `keybind-search.sh` to `~/.tmux/scripts/`
2. Make executable: `chmod +x ~/.tmux/scripts/keybind-search.sh`
3. Add to `~/.tmux.conf`:
   ```bash
   bind-key ? run-shell -b '$HOME/.tmux/scripts/keybind-search.sh'
   ```
4. Reload tmux: `tmux source ~/.tmux.conf`

## Usage

Press `prefix + ?` to open fuzzy keybinding search.

## Requirements

- tmux 3.2+ (for popup support)
- fzf
