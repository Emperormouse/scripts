
xrandr | grep "HDMI-1.* connected" || {
    xrandr --output HDMI-1 --off
    exit
}

case $1 in
    "above")
        par=above;;
    "right")
        par=right-of;;
    "left")
        par=left-of;;
    *)
        par=same-as;;
esac

xrandr  --output HDMI-1 --mode 1920x1080 --rotate normal --"$par" eDP-1 
