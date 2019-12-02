#!/bin/bash
xterm -e "source ../MYNT-EYE-D-SDK-master/wrappers/ros/devel/setup.bash; roslaunch mynteye_wrapper_d mynteye.launch" &
xterm -e "sleep 5 ; rqt_image_view"

