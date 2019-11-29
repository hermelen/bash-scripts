#!/bin/bash

function vrun {
	sudo virsh start win10 && \
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


