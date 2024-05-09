sudo apt-get install tmux i3 i3lock zsh zsh-syntax-highlighting feh picom nvim polybar ripgrep

sudo apt install wget fontconfig \
&& wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip \
&& cd ~/.local/share/fonts && unzip Hack.zip && rm *Windows* && rm Hack.zip && fc-cache -fv
