# ROS 2 TurtleBot3 Autonomous Navigation

## Project Overview

This project explores autonomous mobile robot navigation using ROS 2 Humble, Gazebo Classic, TurtleBot3 Burger, and Navigation2 (Nav2).

The objective is to simulate a mobile robot, estimate its position on a map, plan navigation paths, and execute navigation goals through RViz.

## Technologies

- Ubuntu 22.04
- ROS 2 Humble
- Gazebo Classic
- TurtleBot3 Burger
- Navigation2 (Nav2)
- RViz2
- AMCL localization
- TF2 transforms

## Prerequisites

Install ROS 2 Humble and configure the TurtleBot3 and Navigation2 packages for your system.

Source the ROS 2 environment:

```bash
source /opt/ros/humble/setup.bash
```

## Running the Simulation

### 1. Launch Gazebo

```bash
export TURTLEBOT3_MODEL=burger
ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py
```

### 2. Launch Navigation2

In a separate terminal:

```bash
source /opt/ros/humble/setup.bash
export TURTLEBOT3_MODEL=burger
ros2 launch turtlebot3_navigation2 navigation2.launch.py use_sim_time:=True
```

### 3. Initialize Localization

In RViz, use **2D Pose Estimate** to specify the robot's approximate position and orientation on the map.

### 4. Navigate to a Goal

Use **Nav2 Goal** in RViz to select a reachable destination. Observe the global path, local controller behavior, and robot movement in Gazebo.

## Verification

Useful commands:

```bash
ros2 topic list
ros2 topic echo /odom --once
ros2 topic hz /scan
ros2 topic echo /amcl_pose --once
ros2 lifecycle get /planner_server
ros2 lifecycle get /controller_server
ros2 lifecycle get /bt_navigator
```

## Challenges and Learnings

Document the actual issues encountered during setup, the experiments performed, and the changes that resolved them.

## Results

Add screenshots and describe the navigation tests that were successfully completed.

## Demo

Add the link to the recorded demonstration here.
