# Install essential packages for the desktop environment and utilities
sudo apt-get install kitty i3 i3lock zsh zsh-syntax-highlighting feh picom nvim polybar ripgrep

# Install and set Hack Nerd Font
sudo apt update && sudo apt install wget fontconfig \
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip \
&& cd ~/.local/share/fonts \
&& unzip Hack.zip \
&& rm *Windows* \
&& rm Hack.zip \
&& fc-cache -fv