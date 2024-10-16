#!/bin/bash
VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lso /tmp/lazygit-linux.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${VERSION}_Linux_x86_64.tar.gz"
[ -d /tmp/lazygit ] && rm -rf /tmp/lazygit
tar zvxf /tmp/lazygit-linux.tar.gz -C /tmp/ | pv >/dev/null
install /tmp/lazygit /usr/local/bin
echo "lazygit update v$VERSION"
