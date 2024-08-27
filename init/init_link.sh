#!/bin/bash

unlink ~/.zprofile
unlink ~/.zshrc
ln ../.zprofile ~/.zprofile
ln ../.zshrc ~/.zshrc
