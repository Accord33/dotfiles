#!/bin/bash

unlink ~/.zprofile
unlink ~/.zshrc
unlink ~/.gitconfig
ln ../.zprofile ~/.zprofile
ln ../.zshrc ~/.zshrc
ln ../.gitconfig ~/.gitconfig
