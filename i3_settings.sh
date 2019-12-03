#!/bin/bash

# i3-msg workspace 2 && sleep 2 && urxvt -e "bash -c '~/workspace/perso/bash-scripts/vrun.sh; bash;'" sleep 2 &&

function work()
{    
    sleep 1 && i3-msg workspace 4 && code ~/workspace/synergee/retaildrive-frontend && sleep 3 &&
    i3-msg workspace 3 && sleep 0.5 && xdg-open ~ & sleep 2 &&
    i3-msg workspace 2 && alacritty &
    i3-msg workspace 5 && alacritty & sleep 0.1 && alacritty & sleep 6 &&
    i3-msg workspace 1 && chromium
}


