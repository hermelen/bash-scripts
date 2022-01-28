#!/bin/bash

#function be-run {
#    local userPath=~
#    local iis_cmd="\"C:\Program Files\IIS Express\iisexpress.exe\" /path:C:\Users\\${userPath:9}\workspace\synergee\retaildrive-backend\Retailbook /port:40080"
#    rm -rf ~/workspace/synergee/devops/files/retaildrive-backend/bin/iis_cmd.bat
#    echo $iis_cmd >> ~/workspace/synergee/devops/files/retaildrive-backend/bin/iis_cmd.bat
#    cmd "/C C:\Users\\${userPath:9}\workspace\synergee\custops\files\retaildrive-backend\bin\iis_cmd.bat"
#}

#function _be {
#    if [ $# -ne 2 ]
#    then
#        echo "Usage : _be <Action> <Directory> "
#        echo "ex: _be Clean Retailbook"
#        return 1;
#    fi

#    local Action=${1}
#    local Directory=${2}

#    "/c/Program Files (x86)/Microsoft Visual Studio/2019/Community/MSBuild/Current/Bin/MSBuild.exe" "${RD_BACKEND}/Retailbook.sln" -target:${Directory}:${Action}
#}

#function be-build {
#    "/c/Program Files (x86)/Microsoft Visual Studio/2019/Community/MSBuild/Current/Bin/MSBuild.exe" "${RD_BACKEND}/Retailbook.sln"  //t:Build //p:Configuration=Debug
#}

