# Metapackages for the ROS

- ros_core:
  ```
  packages: [catkin, cmake_modules, common_msgs, gencpp,
            geneus(Jade and newer), genlisp, genmsg,
            gennodejs(Kinetic and newer), genpy, message_generation,
            message_runtime, ros, ros_comm, rosbag_migration_rule,
            rosconsole_bridge, roscpp_core, rosgraph_msgs, roslisp,
            rospack, std_msgs, std_srvs]
  ```
- ros_base:
  ```
  extends: [ros_core]
  packages: [actionlib, bond_core, class_loader, dynamic_reconfigure,
              nodelet_core, pluginlib]
  ```
- robot:
  ```
  extends: [ros_base]
  packages: [control_msgs, diagnostics, executive_smach, filters,
              geometry, robot_model, robot_state_publisher, xacro]
  ```
- perception:
  ```
  extends: [ros_base]
  packages: [image_common, image_pipeline,
              image_transport_plugins, laser_pipeline,
              perception_pcl, vision_opencv]
  ```
- simulators:
  ```
  extends: [robot]
  packages: [gazebo_ros_pkgs, rqt_common_plugins, rqt_robot_plugins,
              stage_ros]
  ```
- viz:
  ```
  extends: [ros_base]
  packages: [rqt_common_plugins, rqt_robot_plugins, rviz]
  ```
- desktop:
  ```
  extends: [robot, viz]
  packages: [angles, common_tutorials, geometry_tutorials, ros_tutorials,
              roslint, visualization_tutorials]
  ```
- desktop_full:
  ```
  extends: [desktop, perception, simulators]
  packages: [urdf_tutorial]
  ```

# Scripts (melodic)

## Intstall the ros_core
```sh
sudo apt-get install ros-melodic-catkin ros-melodic-cmake-modules ros-melodic-common-msgs ros-melodic-gencpp ros-melodic-geneus ros-melodic-genlisp ros-melodic-genmsg ros-melodic-gennodejs ros-melodic-genpy ros-melodic-message-generation ros-melodic-message-runtime ros-melodic-ros ros-melodic-ros-comm ros-melodic-rosbag-migration-rule ros-melodic-rosconsole-bridge ros-melodic-roscpp-core ros-melodic-rosgraph-msgs ros-melodic-roslisp ros-melodic-rospack ros-melodic-std-msgs ros-melodic-std-srvs
```

## Intstall the ros_base (ros_core + ros_base)
```sh
sudo apt-get install ros-melodic-actionlib ros-melodic-bond-core ros-melodic-class-loader ros-melodic-dynamic-reconfigure ros-melodic-nodelet-core ros-melodic-pluginlib
```

## Intstall the robot (ros_core + ros_base + robot)
```sh
sudo apt-get install ros-melodic-control-msgs ros-melodic-diagnostics ros-melodic-executive-smach ros-melodic-filters ros-melodic-geometry ros-melodic-robot-model ros-melodic-robot-state-publisher ros-melodic-xacro
```

## Intstall the viz (ros_core + ros_base + viz)
```sh
sudo apt-get install ros-melodic-rqt-common-plugins ros-melodic-rqt-robot-plugins ros-melodic-rviz
```

## Intstall the desktop (ros_core + ros_base + robot + viz)
```sh
sudo apt-get install ros-melodic-angles ros-melodic-common-tutorials ros-melodic-geometry-tutorials ros-melodic-ros-tutorials ros-melodic-roslint ros-melodic-visualization-tutorials
```
