#!/bin/sh
# move all files under ~/fs/ to the respective location under filesystem root
cd ~/fs/ || echo "ERROR: Place the fs directory in your home directory." >&2 && exit 1
sudo find * -type f -exec ln -sT $(pwd)/{} /{} \;
