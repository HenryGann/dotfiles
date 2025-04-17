#!/bin/bash

rm -rf .zsh
rm .zshrc

cp ~/.zshrc .
cp -r ~/.zsh .

echo "Finished pulling current zsh config files..."

