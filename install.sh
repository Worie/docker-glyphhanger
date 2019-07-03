#!/bin/bash

wget -O docker-glyphhanger.sh https://raw.githubusercontent.com/Worie/docker-glyphhanger/master/docker-glyphhanger.sh
mkdir ~/.docker-glyphhanger
chmod a+x ./docker-glyphhanger.sh
mv ./docker-glyphhanger.sh ~/.docker-glyphhanger
~/.docker-glyphhanger/docker-glyphhanger.sh install

echo "alias glyphy='~/.docker-glyphhanger/docker-glyphhanger.sh'" >> ~/.bashrc
source ~/.bashrc

echo "You can now run glyphhanger within docker and get the results via glyphy command"