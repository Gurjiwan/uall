#! /bin/bash
# Script to run all update commands

# Using \033[{ANSI escae code}m format to define colors for printf.
# Similar to how \n is used for new line \033[ is used fro ANSI colors
# some ANSI codes are [RED] 0;31 [Blue] 0;34 [Yellow] 1;33 [Cyan] 0;36

Cyan='\033[0;36m' # Simple shell variables to hold color values
Yellow='\033[1;33m' # shell variables can be called by ${Variable name}
NC='\033[0m' # No color
RED='\033[0;31m' # RED color value

printf "${Yellow} Running ${NC}pacman -Syu \n"
sudo pacman -Syu
printf "${Cyan} ---	END	---\n"

if command -v yay > /dev/null; then
    printf "${Yellow} Running ${NC}yay -Sua \n"
    yay -Sua
    printf "${Cyan} ---	END	---\n" 
elif command -v paru > /dev/null; then
    printf "${Yellow} Running ${NC}paru -Sua \n"
    paru -Sua
    printf "${Cyan} ---	END	---\n" 
else
    printf "${Yellow}yay and paru are the supported AUR helpers\n"
fi

if command -v flatpak > /dev/null; then
    printf "${Yellow} Running ${NC}flatpak update......\n"
    flatpak update
    printf "${Cyan} ---	END	---\n" 
fi
