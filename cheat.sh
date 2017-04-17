#!/bin/bash

docker run --rm -e EDITOR=vim -v $HOME/.cheat:/home/goldcheese/.cheat -it cheat $*
