#!/bin/bash
# Quick sync of config files without rebuilding

SRC_CONFIG="/home/caleb/gentact_collision_avoidance_ws/src/hiro_collision_avoidance_ros2/config/fr3.yaml"
INSTALL_CONFIG="/home/caleb/gentact_collision_avoidance_ws/install/hiro_collision_avoidance_ros2/share/hiro_collision_avoidance_ros2/config/fr3.yaml"

if [ -f "$SRC_CONFIG" ]; then
    cp "$SRC_CONFIG" "$INSTALL_CONFIG"
    echo "✓ Config synced from source to install directory"
    echo "✓ You can now relaunch without rebuilding"
else
    echo "✗ Source config not found at $SRC_CONFIG"
    exit 1
fi

