#!/bin/bash
(
  flock 200

  killall -q polybar

  while pgrep -u $UID -x polybar > /dev/null; do sleep 0.5; done

  outputs=$(xrandr --query | grep " connected" | cut -d" " -f1)
  tray_output=$(xrandr | awk '/ primary / {print $1}') # Primary Monitor

  for m in $outputs; do
    export MONITOR=$m

    if [[ $m == $tray_output ]]; then
      TRAY_POSITION=right
    fi

    polybar --reload default </dev/null >/var/tmp/polybar-$m.log 2>&1 200>&- &
    disown
  done
) 200>/var/tmp/polybar-launch.lock

