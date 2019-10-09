#!@bash@/bin/bash


timeout 30s bash -c 'fulload() { yes > /dev/null | yes > /dev/null | yes > /dev/null | yes > /dev/null  & }; fulload; read; killall yes' 
