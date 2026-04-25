# Dotfiles Repository
This repository contains my personal Linux configuration files and install scripts used to customize and set up a system environment.

## Repository Contents

### Bash Configuration
- `.bash_aliases`
  - Contains custom shortcuts for common commands:
    - `gs` = git status
    - `ga` = git add
    - `gc` = git commit
    - `gco` = git checkout
    - `gpl` = git pull

- `install_bash.sh`
  - Copies `.bash_aliases` into the home directory
  - Instructs the user to run `source ~/.bash_aliases` to activate aliases

---

### Vim Configuration 
- Custom `.vimrc` file
- Uses Vundle plugin manager
- Includes:
  - Color scheme (jellybeans)
  - Plugins for improved editing experience

- Setup script:
  - Copies `.vimrc` to home directory
  - Installs Vundle if not already installed
  - Installs plugins automatically

---

### System Install Scripts 
- `install_aws_cli.sh`
  - Installs AWS Command Line Interface (AWS CLI)

- Script features:
- Checks for root
- Verifies apt package manager exists
- Prompts user before installing
- Prevents conflicts if `aws` already exists
- Installs dependencies (curl, unzip)
- Downloads and installs AWS CLI
- Cleans up files after installation

## How to Use This Repository

### Clone the repository
- git clone https://github.com/YOUR_USERNAME/dotfiles.git
- cd dotfiles

### Run Setup Scripts
- bash install_bash.sh
- sudo bash sys-installs/install_aws_cli.sh

### Vim Setup
- bash vim-config/install_vim.sh

### Notes / Improvements
- Improve error handling in scripts  
- Add more install scripts for additional tools  
- Improve documentation in subfolders  
- Possibly create one script to automate full system setup
