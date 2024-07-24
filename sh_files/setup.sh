# Install essential packages for the desktop environment and utilities
sudo apt-get install kitty i3 i3lock zsh zsh-syntax-highlighting feh picom nvim polybar ripgrep zip

# Update package list and install wget and fontconfig
sudo apt update
sudo apt install wget fontconfig

# Download and install Hack Nerd Font
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip
cd ~/.local/share/fonts
unzip Hack.zip
rm *Windows*
rm Hack.zip
fc-cache -fv

# Set Kitty as the default terminal emulator
sudo apt-get install dconf-cli
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/bin/kitty 50
sudo update-alternatives --config x-terminal-emulator

# Set Zsh as the default shell for the current user
chsh -s $(which zsh)

# Install programming languages
sudo apt install gcc make # C

sudo apt install nodejs npm -y # Javascript

sudo apt install sbcl # Lisp
