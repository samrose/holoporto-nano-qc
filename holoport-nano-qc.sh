#!@bash@/bin/bash


timeout 30s bash -c 'fulload() { yes > /dev/null | yes > /dev/null | yes > /dev/null | yes > /dev/null  & }; fulload; read; killall yes'
timeout 30s bash -c ' cat /sys/class/thermal/thermal_zone*/temp'
