#!/bin/bash

ip=$(hostname -I)

sed -i "s/robot_hostname=\"robot_hostname.local\"/robot_hostname=\"$1\"/g" ~/ros_ws/intera.sh &&\
sed -i "s/your_ip=\"192.168.XXX.XXX\"/your_ip=\"${ip::-1}\"/g" ~/ros_ws/intera.sh &&\
sed -i 's/ "\n/"\n/g' ~/ros_ws/intera.sh &&\
sed -i "s/indigo/kinetic/g" ~/ros_ws/intera.sh