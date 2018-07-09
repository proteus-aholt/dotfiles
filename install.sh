#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

if [ -d ~/.fonts ]; then
	rm -rf ~/.fonts.old
	mv ~/.fonts ~/.fonts.old
fi

ln -sf $DIR/.fonts ~/.fonts

if [ -d ~/.config/awesome ]; then
	rm -rf ~/.config/awesome.old
	mv ~/.config/awesome ~/.config/awesome.old
fi

ln -sf $DIR/.config/awesome ~/.config/awesome

if [ -d ~/.config/polybar ]; then
	rm -rf ~/.config/polybar.old
	mv ~/.config/polybar ~/.config/polybar.old
fi

ln -sf $DIR/.config/polybar ~/.config/polybar

if [ -f ~/.config/compton.conf ]; then
	rm -rf ~/.config/compton.conf.old
	mv ~/.config/compton.conf ~/.config/compton.conf.old
fi

ln -sf $DIR/.config/compton.conf ~/.config/compton.conf

if [ -d ~/.config/redshift ]; then
	rm -rf ~/.config/redshift.old
	mv ~/.config/redshift ~/.config/redshift.old
fi

ln -sf $DIR/.config/redshift ~/.config/redshift

if [ -d ~/.config/sxhkd ]; then
	rm -rf ~/.config/sxhkd.old
	mv ~/.config/sxhkd ~/.config/sxhkd.old
fi

ln -sf $DIR/.config/sxhkd ~/.config/sxhkd
