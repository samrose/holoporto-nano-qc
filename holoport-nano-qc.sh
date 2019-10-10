#!@bash@/bin/bash

timeout 30s bash -c '
function check1() {
  return 1
}

function full_load() {
  yes > /dev/null |
  yes > /dev/null |
  yes > /dev/null |
  yes > /dev/null
}
function get_temp(){
  for temp in /sys/class/thermal/thermal_zone*/temp; do
    tmpstr=$(<$temp)
    cputmp=$((tmpstr))
    hightmp=$((99000))
    if [ $cputmp -gt $hightmp ]
      then
        echo $cputmp
    fi
  done
}
full_load &
while [ check1 ]
do
  get_temp;
done
killall yes
'
