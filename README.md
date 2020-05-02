# Dotfiles

Originally from [rkalis/dotfiles](https://github.com/rkalis/dotfiles).

## Usage
1. Restore your safely backed up ssh keys to `~/.ssh/`
    1. Alternatively, generate new ssh keys, and add these to your GitHub account
2. Install Homebrew and git
  ```bash
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew install git
  ```
3. Clone this repository
  ```
  git@github.com:plinders/dotfiles.git
  ```
4. Run the `bootstrap.sh` script
    1. Alternatively, only run the `setup.sh` scripts in specific subfolders if you don't need everything
5. (Optional) Install missing applications from the internet
  * [Audacity](https://www.audacityteam.org)
  * [Microsoft Office](https://support.office.com/en-us/article/download-and-install-or-reinstall-office-2016-or-office-2013-7c695b06-6d1a-4917-809c-98ce43f86479)
6. Login to applications, enter license keys, set preferences

## Contents

### Root (/)
* bootstrap.sh - Calls all setup.sh scripts

### User Bin (bin/)
* setup.sh - Symlinks the other contents of the folder to `~/bin/`
* sethidden - A shell script which takes command line arguments to show or hide
hidden files
* togglehidden - A shell script that toggles between showing and hiding hidden
files

### Duti (duti/)
* setup.sh - Sets the defaults set up in the different files
* app.package.id - Contains all extensions for the specified program

### Git (git/)
* setup.sh - Symlinks all git files to `~/`
* .gitignore_global - Contains global gitignores, such as OS-specific files and
several compiled files
* .gitconfig - Sets several global Git variables

### Hammerspoon (hammerspoon/)
* setup.sh - Installs [jasonrudolph/keyboard](https://github.com/jasonrudolph/keyboard). Symlinks all lua and AppleScript files to `~/.hammerspoon/`



### macOS Preferences (macos/)
* setup.sh - Executes a long list of commands pertaining to macOS Preferences

### Packages (packages/)
* setup.sh - Installs the contents of the .list files and the Brewfile

### Helper Scripts (scripts/)
* functions.sh - Contains helper functions for symlinking files and printing
  progress messages

### Visual Studio Code (vscode/)
* setup.sh - Symlinks the settings.json file to `~/Library/Application Support/Code/User`
* settings.json - Contains user settings for Visual Studio Code

### zsh (zsh/)
* setup.sh - Installs Meslo font, oh-my-zsh, sets Agnoster theme