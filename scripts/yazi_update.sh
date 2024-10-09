#!/bin/bash
VERSION=$(curl -s "https://api.github.com/repos/sxyazi/yazi/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lso /tmp/yazi-linux.zip "https://github.com/sxyazi/yazi/releases/download/v${VERSION}/yazi-x86_64-unknown-linux-gnu.zip"
[ -d /tmp/yazi ] && rm -rf /tmp/yazi
unzip /tmp/yazi-x86_64-unknown-linux-gnu.zip | pv >/dev/null
[ -d /opt/yazi ] && rm -rf /opt/yazi
mv /tmp/yazi-x86_64-unknown-linux-gnu /opt/yazi
echo "yazi update v$VERSION"
