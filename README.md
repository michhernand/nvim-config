# Instructions
## Install Dependencies:
- LuaRocks:
    - Mac Instructions:
        - `brew install luarocks`
- LazyGit: https://github.com/jesseduffield/lazygit
    - Mac Instructions:
        - `brew install jesseduffield/lazygit/lazygit`
    - Ubuntu Instructions:
        - `LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')`
        - `curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz`
        - `tar xf lazygit.tar.gz lazygit`
        - `sudo install lazygit /usr/local/bin`
## Download Packer:
- Repo URL: https://github.com/wbthomason/packer.nvim
- Instructions:
    - `git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
##
- Install jsregexp: `luarocks install jsregexp`
## Sync Packages:
- open `lua/mh/packer.lua`
- run `:so`
- run `:PackerSync`
