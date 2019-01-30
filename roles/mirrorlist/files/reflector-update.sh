#!/bin/bash

/usr/bin/reflector --latest 100 \
                   --sort rate \
                   --protocol https \
                   --protocol http \
                   --save /etc/pacman.d/mirrorlist
                   
if [[ -f /etc/pacman.d/mirrorlist.pacnew ]]; then
    rm /etc/pacman.d/mirrorlist.pacnew
fi
