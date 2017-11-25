#!/bin/bash

# starting MAVROS
# param:
#        $1 path to pixhawk port

SERIAL_PORT_PX4=$1 

  source /opt/ros/jade/setup.bash

  if [ -d /home/yifan/git/mavros/ ]
  then
    source /home/yifan/git/mavros/devel/setup.bash
  fi

  roslaunch mavros px4.launch fcu_url:=$SERIAL_PORT_PX4:57600 > .mavros_log.txt 2>&1

