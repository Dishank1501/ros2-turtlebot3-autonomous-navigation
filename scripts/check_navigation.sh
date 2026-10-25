#!/usr/bin/env bash

# Basic ROS 2 Humble navigation diagnostics

source /opt/ros/humble/setup.bash

echo "===== ROS 2 Nodes ====="
ros2 node list

echo ""
echo "===== Important Topics ====="
ros2 topic list | grep -E '(/map|/amcl_pose|/cmd_vel|/scan|/odom)' || true

echo ""
echo "===== TF Frames ====="
ros2 run tf2_tools view_frames
