#!/bin/bash

BASEDIR=$(pwd)
ALIASES=/home/$USER/.bash_aliases
CURRENT_ALIASES=$BASEDIR/alias

if [ -a $ALIASES ]; then
	echo "moving prev aliases"
	mv $ALIASES $ALIASES.bkp
fi

echo "creating aliases"
ln -sf $CURRENT_ALIASES $ALIASES
