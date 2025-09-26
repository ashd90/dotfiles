# Dotfiles

Welcome to my dotfiles repository! 🎉

This repo contains my personal configuration files (dotfiles) used to set up and customize my Unix-like environments. Dotfiles help maintain a consistent setup across different machines and make it easy to share, back up, and restore configurations.

## Table of Contents

- [Overview](#overview)
- [Installation](#installation)
- [Structure](#structure)
- [Usage](#usage)
- [Customization](#customization)
- [Contributing](#contributing)
- [License](#license)

## Overview

Dotfiles typically include configuration for:

- Shells (e.g., bash, zsh, fish)
- Editors (e.g., vim, neovim)
- Terminal emulators
- Window managers and desktop environments
- Git, SSH, and other developer tools

This repository is tailored for my workflow, but feel free to explore and adapt them for your own setup!

## Installation

Clone the repository to your home directory:

```bash
git clone https://github.com/ashd90/dotfiles.git ~/dotfiles
```

Symlink configuration files to your home directory:

```bash
cd ~/dotfiles
./install.sh
```

> **Note:** The `install.sh` script will create symbolic links for relevant configs. Review the script before running to ensure safety!

## Structure

Typical directory organization:

```
dotfiles/
│
├── .bashrc
├── .zshrc
├── .vimrc
├── .config/
│   ├── nvim/
│   ├── alacritty/
│   └── ...
├── install.sh
└── README.md
```

- Top-level files are for shell and editor configs.
- `.config/` contains configs for applications supporting XDG directory specification.

## Usage

After installing, open a new terminal to start using your personalized environment.

- Modify any config as needed and re-source or restart the application.
- Use Git to track changes and sync across devices.

## Customization

Feel free to fork and adapt these dotfiles. If you want to use them as your own:

1. Fork the repo.
2. Adjust configs to match your preferences.
3. Optionally add your own install or bootstrap scripts.

## Contributing

Pull requests are welcome! If you find improvements or new configurations, feel free to open an issue or PR.

## License

These dotfiles are released under the MIT License. See [LICENSE](LICENSE) for details.

---

Happy customizing! 😄