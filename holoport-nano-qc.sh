#!@bash@/bin/bash


timeout 30s bash -c 'fulload() { yes > /dev/null | yes > /dev/null | yes > /dev/null | yes > /dev/null | cat /sys/class/thermal/thermal_zone*/temp & }; fulload; read; killall yes' 
