# UAV ROS drivers

This packages integrates all driver components for the  [uav_ros_stack](https://github.com/lmark1/uav_ros_stack).  

It serves as a collection of the commonly used UAV sensor and equipment drivers.

## Drivers

### Optitrack

Optitrack drivers and their dependencies.

| Respository | Description | Build Status |
|----|----|----|
| [ros_vrpn_client](https://github.com/ethz-asl/ros_vrpn_client) | A ROS interface for VRPN (Optitrack) | N/A |
| [vrpn_catkin](https://github.com/ethz-asl/vrpn_catkin) | A Catkin wrapper for the VRPN library (Optitrack) | N/A |
| [catkin_simple](https://github.com/catkin/catkin_simple) | A CMake wrapper for Catkin | N/A |
| [glog_catkin](https://github.com/ethz-asl/glog_catkin) | A Catkin wrapper for the Google glog library | N/A |

### LiDAR

Drivers for Velodyne VLP-16 and Ouster OS0 LiDARs.

| Respository | Description | Build Status |
|----|----|----|
| [velodyne](https://github.com/ros-drivers/velodyne) | ROS support for Velodyne 3D LIDARs | [![Basic Build Workflow](https://github.com/ros-drivers/velodyne/actions/workflows/basic-build-ci.yaml/badge.svg?branch=master)](https://github.com/ros-drivers/velodyne/actions/workflows/basic-build-ci.yaml) |
| [ouster_os0_driver](https://github.com/larics/ouster_os0_driver) | Drivers for ouster os0 series | N/A |

### Cameras

Drivers for various camera sensors.

| Respository | Description | Build Status |
|----|----|----|
|[realsense2_camera](https://github.com/IntelRealSense/realsense-ros) - APT install | Packages for using Intel RealSense cameras (D400 series SR300 camera and T265 Tracking Module) with ROS.| N/A |
| [zed_cpu_ros](https://github.com/willdzeng/zed_cpu_ros) | A simple zed camera driver which only use CPU and only publish left and right raw images and its camera info. | [![Build Status](https://travis-ci.org/willdzeng/zed_cpu_ros.svg?branch=master)](https://travis-ci.org/willdzeng/zed_cpu_ros) |