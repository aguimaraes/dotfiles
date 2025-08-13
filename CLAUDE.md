# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository for managing Linux desktop configuration files using GNU Stow. The repository contains configuration files for Hyprland (Wayland compositor) and tmux (terminal multiplexer). Designed to work across macOS, Arch Linux, and Raspberry Pi OS.

## Dependencies

### Core Requirements
- **GNU Stow** - For managing dotfile symlinks
- **tmux** - Terminal multiplexer

### Arch Linux
```bash
sudo pacman -S stow tmux hyprland kitty rofi dolphin hyprpaper brightnessctl wireplumber playerctl google-chrome
```

### macOS (Homebrew)
```bash
brew install stow tmux kitty rofi
# Note: Hyprland is Linux-only, use alternative compositor or skip
```

### Raspberry Pi OS (Debian-based)
```bash
sudo apt update
sudo apt install stow tmux kitty rofi dolphin brightnessctl wireplumber-tools playerctl
# Hyprland may need to be built from source or use alternative repository
```

### Optional Applications Referenced
- **google-chrome-stable** - Web browser (Super+I binding)
- **hyprpolkitagent** - Authentication agent for Hyprland
- **brightnessctl** - Screen brightness control
- **playerctl** - Media player control

## Architecture

The repository follows GNU Stow conventions:
- `.config/` - Application configuration directories that mirror `~/.config/`
- `.stow-local-ignore` - Excludes git metadata and documentation from being stowed
- Each configuration can be stowed independently or together

## Common Commands

### Stow Management
```bash
# Install all configurations (run from .dotfiles directory)
stow .

# Install specific configuration
stow .config/hypr
stow .config/tmux

# Remove configurations
stow -D .

# Preview changes (dry run)
stow -n .
```

### Configuration Reload
```bash
# Reload Hyprland configuration
hyprctl reload

# Reload tmux configuration
tmux source-file ~/.config/tmux/tmux.conf
```

## Key Configuration Details

### Hyprland (`.config/hypr/hyprland.conf`)
- Super key as main modifier
- Terminal: kitty (Super+T)
- Browser: google-chrome-stable (Super+I) 
- Launcher: rofi (Super+Space)
- File manager: dolphin (Super+E)
- Media keys configured for playerctl, wpctl, and brightnessctl

### tmux (`.config/tmux/tmux.conf`)
- Prefix: Ctrl+S (not default Ctrl+B)
- Vim-style pane navigation: hjkl
- Reload config: prefix+r