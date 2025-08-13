# dotfiles

Personal configuration files for Linux desktop environment using GNU Stow. Includes configurations for Hyprland (Wayland compositor) and tmux (terminal multiplexer).

## Quick Start

```bash
# Clone the repository
git clone <your-repo-url> ~/.dotfiles
cd ~/.dotfiles

# Install dependencies (see platform-specific instructions below)
# Then install all configurations
stow .
```

## Dependencies

### Arch Linux
```bash
sudo pacman -S stow tmux hyprland kitty rofi dolphin hyprpaper hyprlock brightnessctl wireplumber playerctl google-chrome grim slurp wl-clipboard
```

### macOS (Homebrew)
```bash
brew install stow tmux kitty rofi
# Note: Hyprland is Linux-only, tmux config will still work
```

### Raspberry Pi OS (Debian-based)
```bash
sudo apt update
sudo apt install stow tmux kitty rofi dolphin brightnessctl wireplumber-tools playerctl grim slurp wl-clipboard-tools
# Hyprland may need to be built from source
```

## Usage

```bash
# Install all configurations
stow .

# Install specific configuration
stow .config/hypr
stow .config/tmux

# Remove configurations
stow -D .

# Preview changes (dry run)
stow -n .
```

## What's Included

- **Hyprland** - Wayland compositor with custom keybindings and window management
- **tmux** - Terminal multiplexer with Ctrl+S prefix and vim-style navigation

## Key Shortcuts

### Hyprland
- `Super + T` - Terminal (kitty)
- `Super + B` - Browser (Google Chrome)
- `Super + Space` - Launcher (rofi)
- `Super + E` - File manager (dolphin)
- `Super + Q` - Close window
- `Super + [1-9]` - Switch workspaces

#### Navigation (Vim-style)
- `Super + h/j/k/l` - Move focus between windows
- `Super + Shift + h/j/k/l` - Move windows
- `Super + Ctrl + h/j/k/l` - Resize windows

#### Screenshots
- `Super + S` - Screenshot selection (copies to clipboard)
- `Super + Shift + S` - Screenshot entire screen

#### Special
- `Super + ` ` - Toggle scratchpad workspace
- `Super + Shift + ` ` - Move window to scratchpad
- `Super + Shift + L` - Lock screen (hyprlock)

### tmux
- `Ctrl + S` - Prefix key
- `Prefix + r` - Reload configuration
- `Prefix + h/j/k/l` - Navigate panes (vim-style)