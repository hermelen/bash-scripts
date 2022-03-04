#!/bin/bash

function vrun {
        echo ${SUDOPASS} | sudo -S -k virsh start win10 &> /dev/null
	remote-viewer spice://localhost:5900  &> /dev/null
}

function win {
        echo ${SUDOPASS} | sudo -S -k virsh start win10 &> /dev/null
}

function vshow {
	remote-viewer spice://localhost:5900  &> /dev/null
}

function vstop {
	sudo virsh shutdown win10
}

function ssyn {
	~/.screenlayout/synergee.sh
}

function sch {
	~/.screenlayout/chanac.sh
}

function ssolo {
	~/.screenlayout/solo.sh
}

function sfonta {
	~/.screenlayout/fonta.sh
}

function scor {
	~/.screenlayout/covid19.sh
}

function work {
	chromium &>/dev/null
	pcmanfm ~/workspace/synergee &>/dev/null
	rider ~/workspace/synergee/retaildrive-frontend &>/dev/null
}

function earmic {
    if [ "$1" = "off" ];
    then
        profile="a2dp_sink"
		echo "Bluetooth mic is OFF"
    else
		profile="handsfree_head_unit"
		echo "Bluetooth mic in ON"
    fi

    pacmd set-card-profile bluez_card.74_45_CE_54_97_31 $profile
}

function bt {
	if [ $# -lt 1 ]
	then
        echo "This function takes at least 1 parameter"
        echo 'For example: bt on'
    else
		if [ $# -eq 1 ]
		then
			case "$1" in
				on)
				bluetoothctl power on
				;;
				off)
				bluetoothctl power off
				;;
				mic)
				earmic
				;;
				mute)
				earmic off
				;;
				scan)
				bluetoothctl scan on
				;;
				paired)
				bluetoothctl paired-devices
				;;
				--help | -h)
				echo "List cards to find the card name and available profiles:"
				echo " - pacmd list-cards"
				echo ""
				echo "Enable the mic by selecting the HSP/HFP profile:"
				echo " - pacmd set-card-profile <card-name> headset_head_unit"
				echo " - ex: pacmd set-card-profile bluez_card.74_45_CE_54_97_31 headset_head_unit"
				echo ""
				echo "Source:"
				echo "https://bbs.archlinux.org/viewtopic.php?pid=1921917#p1921917/"
				;;
				*)
				echo "Usage: (bt on | bt scan | bt paired)"
				;;
			esac
		fi

		if [ $# -eq 2 ]
		then
			case "$1" in
				pair)
				bluetoothctl pair $2
				;;
				connect)
				bluetoothctl connect $2
				;;
				*)
				echo "Usage: (bt pair <device-IP> | bt connect <device-IP>)"
				;;
			esac
		fi
		if [ $# -gt 2 ]
		then
			echo "This function takes 2 parameters maximum"
		fi
	fi
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


