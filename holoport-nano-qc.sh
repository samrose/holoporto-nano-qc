#!@bash@/bin/bash


fulload() { dd if=/dev/urandom | bzip2 -9 >> /dev/null | dd if=/dev/urandom | bzip2 -9 >> /dev/null | dd if=/dev/urandom | bzip2 -9 >> /dev/null | dd if=/dev/urandom | bzip2 -9 >> /dev/null & }; fulload; read; killall dd
