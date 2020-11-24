#!/usr/bin/env bash
X11RUNNING=$(pidof x11vnc)
TOP=50
LEFT1=0
LEFT2=1920
LEFT3=3840
MIC_SOUND="alsa_input.usb-Focusrite_Scarlett_Solo_USB-00.iec958-stereo"
DESKTOP_SOUND="alsa_output.usb-Focusrite_Scarlett_Solo_USB-00.analog-stereo.monitor"
if [ "$X11RUNNING" = "" ]
then 
    # RED=$(curl -s "https://www.rxtransparent.com/wp-content/uploads/2016/11/Red-Square.png" | base64 -w 0)
    echo "X11 | iconName=media-playback-stop imageWidth=20"
    echo "---"
    echo "<span color='red'>X11 est prêt à diffuser</span>"
    echo "---"
    echo "Cockipt (Choose a screen to cast)"
    echo "Ecran 1 - 1024x768 | iconName=media-playback-start bash='x11vnc -shared -viewonly -forever -loop -clip 1024x768+$LEFT+$TOP -speeds 6,100,80 -noxdamage -nocursorshape -cursor most &' terminal=false refresh=true"
    echo "Ecran 2 - 1024x768 | iconName=media-playback-start bash='x11vnc -shared -viewonly -forever -loop -clip 1024x768+$LEFT2+$TOP -speeds 6,100,80 -noxdamage -nocursorshape -cursor most &' terminal=false refresh=true"
    echo "Ecran 3 - 1024x768 | iconName=media-playback-start bash='x11vnc -shared -viewonly -forever -loop -clip 1024x768+$LEFT3+$TOP -speeds 6,100,80 -noxdamage -nocursorshape -cursor most &' terminal=false refresh=true"
    TIMESTAMP=$(date +"%Y-%m-%d-%T")
    CMD="ffmpeg -video_size 1920x1080 -show_region 1 -framerate 10 -f x11grab -i :1.0+0,0 -f pulse -ac 1 -ar 44100 -i $MIC_SOUND -acodec libmp3lame -map 0:0 -map 1:0 ~/Bureau/output-$TIMESTAMP.mp4"
    echo "Capture | iconName=media-playback-start bash='$CMD' &"
    echo "---"
    echo "Full Screen (Choose a screen to cast)"
    echo "Ecran 1 - 1920x1080 | iconName=media-playback-start bash='x11vnc -shared -viewonly -forever -loop -clip 1920x1080+$LEFT+0 -padgeom 1920x1080 -nocursorshape -cursor most &' terminal=false refresh=true"
    echo "Ecran 2 - 1920x1080 | iconName=media-playback-start bash='x11vnc -shared -viewonly -forever -loop -clip 1920x1080+$LEFT2+0 -padgeom 1920x1080 -nocursorshape -cursor most &' terminal=false refresh=true"
    echo "Ecran 3 - 1920x1080 | iconName=media-playback-start bash='x11vnc -shared -viewonly -forever -loop -clip 1920x1080+$LEFT3+0 -padgeom 1920x1080 -nocursorshape -cursor most&' terminal=false refresh=true"
else
    GREEN=$(curl -s "https://business.critizr.com/hs-fs/hubfs/play-button%20(1).png?width=128&height=128&name=play-button%20(1).png" | base64 -w 0)
    echo "<span color='red'>X11</span> |  image=$GREEN imageWidth=20"
    echo "---"
    echo "<span color='green'>X11 diffuse actuellement votre écran</span>"
    echo "<span color='yellow'><tt>Processes: $X11RUNNING</tt></span> | iconName=network-transmit-receive"
    echo "---"
    echo "Stop X11 Server | iconName=media-playback-stop bash='pkill x11vnc' terminal=false refresh=true"
fi
