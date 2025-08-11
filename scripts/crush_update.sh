#!/bin/bash
VERSION=$(curl -s https://api.github.com/repos/charmbracelet/crush/releases/latest | grep -Po '"tag_name": "v\K[^"]*')
echo Crush v$VERSION downloading
curl -# -Lo /tmp/crush-linux.tar.gz "https://github.com/charmbracelet/crush/releases/download/v$VERSION/crush_${VERSION}_Linux_x86_64.tar.gz"
[ -d /tmp/crush_${VERSION}_Linux_x84_64 ] && rm -rf /tmp/crush_${VERSION}_Linux_x84_64
tar zvxf /tmp/crush-linux.tar.gz -C /tmp/ | pv >/dev/null
[ -d /opt/crush/ ] && sudo rm -rf /opt/crush/
sudo mv /tmp/crush_${VERSION}_Linux_x86_64 /opt/crush
echo "Crush update v$VERSION"
