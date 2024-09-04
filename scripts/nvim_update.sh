#!/bin/bash
VERSION=$(curl -s https://api.github.com/repos/neovim/neovim/releases/latest | grep -Po '"tag_name": "v\K[^"]*')
curl -Lso /tmp/nvim-linux.tar.gz "https://github.com/neovim/neovim/releases/download/v$VERSION/nvim-linux64.tar.gz"
[ -d /tmp/nvim-linux64 ] && rm -rf /tmp/nvim-linux64
tar zvxf /tmp/nvim-linux.tar.gz -C /tmp/ | pv > /dev/null
[ -d /opt/nvim/ ] && sudo rm -rf /opt/nvim/
sudo mv /tmp/nvim-linux64 /opt/nvim
echo "nvim update v$VERSION"
