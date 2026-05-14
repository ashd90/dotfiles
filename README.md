# ✨ Dotfiles
<div align="center">

![Lua](https://img.shields.io/badge/Lua-2C2D72?style=for-the-badge&logo=lua&logoColor=white)
![Shell](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Neovim](https://img.shields.io/badge/Neovim-57A143?style=for-the-badge&logo=neovim&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)

**A personal collection of configuration files for an optimized Linux development environment** 🚀

[Repository](https://github.com/ashd90/dotfiles) • [License](#license)

</div>

---

## 🎯 About

This repository contains my personal dotfiles for setting up and customizing a Unix-like development environment. These configurations reflect my workflow preferences and are continually evolving as I discover new tools and optimizations.

> **Note:** These dotfiles are tailored for my personal use. Feel free to explore, fork, and adapt them for your own setup! 🍴

---

## 📁 Repository Structure

```
dotfiles/
├── 🐚 bashrc/                    Bash shell configurations
├── 💻 Terminal Emulators
│   ├── alacritty/                GPU-accelerated terminal emulator
│   ├── ghostty/                  Modern terminal with GPU rendering
│   ├── kitty/                    Graphics-based terminal emulator
│   └── walker/                   Application launcher & window switcher
├── 🎨 Window Manager & UI
│   ├── hypr/                     Hyprland window manager configuration
│   ├── waybar/                   Wayland bar/status panel
│   ├── waybar-bkp/               Waybar backup configuration
│   ├── rofi/                     Application launcher
│   └── plank/                    Minimalist dock
├── ✏️ Text Editors
│   ├── nvim/                     Neovim config (LazyVim setup)
│   └── nvim-bkp/                 Neovim backup configuration
├── 🎵 Multimedia
│   ├── mpd/                      Music Player Daemon configuration
│   └── mpv/                      Video player configuration
├── 📊 System Monitoring
│   ├── conky/                    System monitor and widget engine
│   └── lazydocker/               Docker management TUI
├── 📝 Version Control
│   └── lazygit/                  Git management TUI
├── 🎨 Utilities
│   ├── starship/                 Cross-shell prompt configuration
│   └── fonts/                    Custom fonts & typography
└── 📄 Configuration Files
    └── .gitignore                Git ignore rules
```

---

## 🛠️ Tools & Applications

### 🖥️ Shell & Terminal
| Tool | Purpose | Config |
|------|---------|--------|
| **Bash** | Shell scripting & configuration | `bashrc/` |
| **Alacritty** | GPU-accelerated terminal | `alacritty/` |
| **Ghostty** | Modern terminal emulator | `ghostty/` |
| **Kitty** | Graphics-capable terminal | `kitty/` |

### 🎨 Window Management
| Tool | Purpose | Config |
|------|---------|--------|
| **Hyprland** | Tiling window manager | `hypr/` |
| **Waybar** | Wayland taskbar | `waybar/`, `waybar-bkp/` |
| **Rofi** | Application launcher | `rofi/` |
| **Plank** | Minimalist dock | `plank/` |

### ✏️ Development
| Tool | Purpose | Config |
|------|---------|--------|
| **Neovim** | Hyperextensible text editor | `nvim/` |
| **LazyVim** | Modern Neovim configuration | `nvim/` |
| **Starship** | Fast, minimal shell prompt | `starship/` |

### 🎭 Utilities
| Tool | Purpose | Config |
|------|---------|--------|
| **LazyGit** | Git management interface | `lazygit/` |
| **LazyDocker** | Docker management interface | `lazydocker/` |
| **Conky** | System monitor widget | `conky/` |

### 🎵 Media
| Tool | Purpose | Config |
|------|---------|--------|
| **MPD** | Music Player Daemon | `mpd/` |
| **MPV** | Video player | `mpv/` |

### 🎨 Fonts & Typography
Custom fonts and typography configurations to enhance the overall aesthetic.

---

## 🚀 Quick Start

### Clone the Repository
```bash
git clone https://github.com/ashd90/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### Using the Dotfiles
The repository is organized to work with XDG Base Directory specification where applicable. You can:

1. **Manually copy configurations** to their respective locations in `~/.config/` or home directory
2. **Create symbolic links** to manage multiple machine setups
3. **Adapt specific configs** to your needs

Example for Neovim:
```bash
ln -s ~/dotfiles/nvim ~/.config/nvim
```

Example for Starship:
```bash
ln -s ~/dotfiles/starship ~/.config/starship
```

---

## ⚙️ Configuration Highlights

### 💤 Neovim with LazyVim
Modern Neovim configuration using LazyVim for plugin management and sensible defaults.

### 🎯 Hyprland + Waybar
Tiling window manager configuration with Wayland support for a modern, efficient workflow.

### 🎨 Custom Shell Prompt
Starship configuration for a fast, minimal, and beautiful command-line prompt.

### 🔄 Git Integration
LazyGit provides an intuitive TUI for version control management.

### 🐳 Container Management
LazyDocker simplifies Docker and container interaction.

---

## 🎨 Color Scheme & Theming

All configurations are themed to work together harmoniously with a cohesive aesthetic throughout the environment. Terminal colors, syntax highlighting, and UI elements are carefully coordinated.

---

## 📦 Dependencies

To use these dotfiles, you'll need:

- **Linux** (Wayland-based desktop environment recommended)
- **Git** for cloning and version control
- **Core Tools**: bash, curl, wget
- **Individual apps**: As listed in the structure above

Install required applications based on which configurations you plan to use.

---

## 🔄 Customization

These dotfiles are meant to be personalized! Here's how to adapt them:

1. **Clone or fork** this repository
2. **Review and modify** configurations to match your preferences
3. **Test thoroughly** before relying on them across machines
4. **Use Git** to track your changes and sync across devices

```bash
# Example: Customize your own copy
cp -r ~/dotfiles ~/my-dotfiles
cd ~/my-dotfiles
# Edit configs as needed
git init
git add .
git commit -m "Initial commit: personal dotfiles"
```

---

## 📚 Learning Resources

- [Dotfiles Best Practices](https://dotfiles.github.io/)
- [XDG Base Directory](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html)
- [Hyprland Documentation](https://hyprland.org/)
- [LazyVim Documentation](https://lazyvim.github.io/)
- [Starship Documentation](https://starship.rs/)

---

## 🤝 Contributing

These are personal dotfiles, but I'm open to suggestions and improvements! If you notice something interesting or have a suggestion:

- 💬 Open an issue to discuss ideas
- 🔀 Submit a pull request with improvements
- 📝 Share feedback or configuration alternatives

---

## 📜 License

These dotfiles are shared as-is for personal and educational purposes. Feel free to use, modify, and distribute as you see fit.

---

## 🙋 About Me

This is my personal workspace configuration. These dotfiles evolve as my workflow changes and I discover new tools. They represent a blend of productivity, aesthetics, and customization.

---

<div align="center">

**Last Updated:** May 2026 📅

Made with ❤️ for a beautiful Linux workflow

⭐ If you found this helpful, consider giving it a star!

</div>
