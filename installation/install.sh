#!/bin/bash

# Exit immediatelly if a command exits with a non-zero status
set -e

# Executes a command when DEBUG signal is emitted in this script - should be after every line
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG

# Executes a command when ERR signal is emmitted in this script
trap 'echo "$0: \"${last_command}\" command failed with exit code $?"' ERR

distro=`lsb_release -r | awk '{ print $2 }'`
[ "$distro" = "18.04" ] && ROS_DISTRO="melodic"
[ "$distro" = "20.04" ] && ROS_DISTRO="noetic"

sudo apt-get update
sudo apt-get install -y \
  curl \
  libglew-dev \
  libglfw3-dev \
  libtclap-dev \
  libpcap-dev \
  ros-$ROS_DISTRO-pcl-ros \
  ros-$ROS_DISTRO-realsense2-camera \
  ros-$ROS_DISTRO-rgbd-launch \
  ros-$ROS_DISTRO-openzen-sensor

# Add realsens camera to udev/rules
sudo curl https://raw.githubusercontent.com/IntelRealSense/librealsense/master/config/99-realsense-libusb.rules -o /etc/udev/rules.d/99-realsense-libusb.rules
