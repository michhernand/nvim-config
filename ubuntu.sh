#!/bin/bash

# NVIM
snap install nvim

# LuaRocks package manager
apt install luarocks

# LazyGit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
apt install lazygit /usr/local/bin

# NodeJS
sudo snap install node --classic --channel=14

# Go LSP
go install golang.org/x/tools/gopls@latest

# Python LSP
npm install -g pyright

# Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo '\n\n\nEverything installed. Now open ~/.config/nvim/lua/mh/packer.lua in nvim, run `:so` and then `:PackerSync`'
