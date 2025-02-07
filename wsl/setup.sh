# Install essential packages for the desktop environment and utilities
sudo apt-get install zsh zsh-syntax-highlighting nvim ripgrep zip emacs

# Update package list and install wget and fontconfig
sudo apt update

# Set Zsh as the default shell for the current user
chsh -s $(which zsh)

# Node 
sudo apt-get install curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
nvm install --lts

# Install programming languages
sudo apt install gcc make # C

sudo apt install sbcl # Lisp
