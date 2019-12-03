#!/bin/bash
sudo virsh start win10 && \
remote-viewer spice://localhost:5900  &> /dev/null
