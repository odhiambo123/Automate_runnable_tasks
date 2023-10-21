#!/bin/bash
echo "let brew list packages that require upgrade"
brew update
echo "list them"
brew outdated

echo "upgrade them"
brew upgrade
#echo "opening brew downloads folder"
#open /Users/dev/Library/Caches/Homebrew/downloads/
#echo "opening applications folder"
#open /Applications/

echo "update pip"
pip3 install --upgrade pip
echo "update node"
brew upgrade node

echo "upgrade python"
brew upgrade python
