#!/bin/sh
# https://www.reddit.com/r/Polybar/comments/vrm02p/i_cant_find_my_nvidia_temp_location_to_add/
nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits | while read line; do echo "GPU: $line°C"; done