#!/bin/bash

BASE_URL=https://raw.githubusercontent.com/dennis-tsvetkov/vimcolors/master

# install color scheme into /usr/share/vim/vim*/colors/
VIM_COLORS_DIR=$(ls -d /usr/share/vim/vim*/colors)
curl -s "$BASE_URL/monokai.vim" > $VIM_COLORS_DIR/monokai.vim

# update vimrc
curl -s $BASE_URL/.vimrc >> /etc/vim/vimrc.local
