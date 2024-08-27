#!/bin/bash

unlink ~/.zprofile
unlink ~/.zshrc
unlink ~/.gitconfig
unlink ~/.Brewfile
ln .zprofile ~/.zprofile
ln .zshrc ~/.zshrc
ln .gitconfig ~/.gitconfig
ln .Brewfile ~/.Brewfile
