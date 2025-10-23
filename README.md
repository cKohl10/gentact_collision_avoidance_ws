# gentact_collision_avoidance
Control the FR3 using ROS2 to avoid contacts detected by gentact skins!


## Dependancies
This ROS2 workspace has been tested with Ubuntu 22.04 and ROS2 Humble

## Build and run
```
git clone --recurse-submodules https://github.com/cKohl10/gentact_collision_avoidance_ws.git
git submodule update --init --recursive
cd gentact_collision_avoidance_ws
colcon build
```

To run the full controller with skin:
`ros2 launch gentact_ros_tools launch`

## Updates
The gentact_collision_avoidance_ws contains the following submodules
- **gentact_ros_tools**: ROS2 nodes and launch files for interfacing with GenTact skin units
- **gentact_descriptions**: URDF and launch files for custom robots with skin units
- **hiro_collision_avoidance_ros2**: A collision avoidance controller adapted from [Escobedo et al. 2021](https://ieeexplore.ieee.org/abstract/document/9636130)