# 🎨 Vim Configuration

  Modular Vim configuration organized in branches for different development environments.

  ## 📋 Structure

  This repository uses a branch system to maintain language-specific configurations:

  - **`base`** - Language-agnostic configuration (main branch)
    - General editor settings
    - Universal plugins
    - Base key mappings
    - Lenguage agnostic

## 🚀 Installation

  ### Prerequisites
  - Vim 8.0+
  - Git
  - curl (for vim-plug)

  ### Basic Installation

  ```bash
  # Backup existing configuration
  mv ~/.vim ~/.vim.backup
  mv ~/.vimrc ~/.vimrc.backup

  # Clone this repository
  git clone https://github.com/YOUR_USERNAME/vim-config.git ~/.vim

  # Create symlink for vimrc
  ln -s ~/.vim/vimrc ~/.vimrc

  # Install plugins
  vim +PlugInstall +qall
  ```

## 🔧 Customization

  ### Adding New Language Configuration

  cd ~/.vim
  git checkout base
  git checkout -b new-language

  vim vimrc

  git add .
  git commit -m "Add new-language configuration"

  ### Update Branch with Base Changes

  git checkout your-branch
  git merge base

