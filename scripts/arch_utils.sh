#!/bin/bash

function ssyn {
	~/.screenlayout/synergee.sh
}

function ssolo {
	~/.screenlayout/one.sh
}

function work {
	chromium &>/dev/null
	pcmanfm ~/workspace/synergee &>/dev/null
	rider ~/workspace/synergee/retaildrive-frontend &>/dev/null
}

function pass {
    cd ~/workspace/perso/keepassxc && git pull
}


#function work {    
#    sleep 1 && i3-msg workspace 4 && rider ~/workspace/synergee/retaildrive-frontend && sleep 3 &&
#    i3-msg workspace 3 && sleep 0.5 && pcmanfm ~/workspace/synergee & sleep 2 &&
#    i3-msg workspace 1 && chromium
#}

#function usbBoot {
#	if [ $# eq 3 ]
#	then
#		local isoPath=${1}
#		local projectDir=${2}
#		echo "Yor iso is isoPath"
#		echo "Default path: ~/Downloads/"

#	elif [ $# -ne 1 ]
#	then
#		echo "Please type your .iso path"
#		echo "Default path: ~/Downloads/"
#	elif [ $# -ne 1 ]
#	then
#		echo "Please type your .iso path"
#		echo "Default path: ~/Downloads/"


#	sudo dd bs=4M if=~/Downloads/${isoname}.iso of=/dev/sd${driveLetter} status=progress oflag=sync
#}

# function reset-rider {
#     if [[ "$OSTYPE" == "linux-gnu" ]]
#     then
# 	## declare array of tools
# 	declare -a tools=(
# 	    "Rider2019.3"
# 	    )
# 	for tool in "${tools[@]}"
# 	do
# 	    echo "removing evaluation key for $tool"
# 	    rm -rf ~/.$tool*/config/eval
# 	    rm -rf ~/.$tool*/config/options/other.xml
# 	    rm -rf ~/.java/.userPrefs/jetbrains/${tool,,}
# 	done
# 	for tool in "${tools[@]}"
# 	do
# 	    echo "resetting evalsprt in options.xml for $tool"
# 	    sed -i '/evlsprt/d' ~/.$tool*/config/options/other.xml
# 	done
# 	echo "resetting evalsprt in prefs.xml"
# 	sed -i '/evlsprt/d' ~/.java/.userPrefs/prefs.xml
# 	for tool in "${tools[@]}"
# 	do
# 	    echo "change date file for $tool"
# 	    find ~/.$tool* -type d -exec touch -t $(date +"%Y%m%d%H%M") {} +;
# 	    find ~/.$tool* -type f -exec touch -t $(date +"%Y%m%d%H%M") {} +;
# 	done
# 	echo "Complete"
#     else
#         _linuxFunctionMsg
#     fi
# }


