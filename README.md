# ROBOTIS Tools

## Install ROS kinetic on PC (Desktop or Laptop PC)
- First, install Linux (Ubuntu or Linux Mint) on your PC.
- Next, in order to develop source code from the remote PC, refer to the commands below.
- Tip: The terminal application can be found with the Ubuntu search icon on the top left corner of the screen. Shortcut key for terminal is `Ctrl-Alt-T`.

```sh
$ sudo apt-get update
$ sudo apt-get upgrade
$ wget https://raw.githubusercontent.com/ROBOTIS-GIT/robotis_tools/master/install_ros_kinetic.sh && chmod 755 ./install_ros_kinetic.sh && bash ./install_ros_kinetic.sh
```

## Install ROS kinetic on Raspberry Pi
- First, install Linux (Ubuntu MATE) on your Raspberry Pi. Please following the link below.
- [Install Ubuntu MATE on Raspberry Pi](http://emanual.robotis.com/docs/en/platform/turtlebot3/raspberry_pi_3_setup/#install-linux-ubuntu-mate)
- Next, in order to develop source code from the remote PC, refer to the commands below.

```sh
$ sudo apt-get update
$ sudo apt-get upgrade
$ wget https://raw.githubusercontent.com/ROBOTIS-GIT/robotis_tools/master/install_ros_kinetic_rp3.sh && chmod 755 ./install_ros_kinetic_rp3.sh && bash ./install_ros_kinetic_rp3.sh
```

- If you want to use images with Linux and ROS already installed, see the following link.
- [Install Linux based on Raspbian with ROS](http://emanual.robotis.com/docs/en/platform/turtlebot3/raspberry_pi_3_setup/#install-linux-based-on-raspbian)

## Install ROS packages for ROBOTs powered by DYNAMIXEL
```sh
(Move to your catkin workspace)
$ cd ~/catkin_ws/src/

(Select the robot you want to use)
$ wstool merge https://raw.githubusercontent.com/ROBOTIS-GIT/robotis_tools/master/.all.rosinstall (for all)
$ wstool merge https://raw.githubusercontent.com/ROBOTIS-GIT/robotis_tools/master/.dynamixel.rosinstall (for Dynamixel SDK and Dynamixel Workbench)
$ wstool merge https://raw.githubusercontent.com/ROBOTIS-GIT/robotis_tools/master/.turtlebot3.rosinstall (for TurtleBot3)
$ wstool merge https://raw.githubusercontent.com/ROBOTIS-GIT/robotis_tools/master/.openmanipulator.rosinstall (for OpenManipulator)
$ wstool merge https://raw.githubusercontent.com/ROBOTIS-GIT/robotis_tools/master/.op3.rosinstall (for ROBOTIS OP3)
$ wstool merge https://raw.githubusercontent.com/ROBOTIS-GIT/robotis_tools/master/.thormang3.rosinstall (for Thormang3)
$ wstool merge https://raw.githubusercontent.com/ROBOTIS-GIT/robotis_tools/master/.manipulator_h.rosinstall (for Manipulator-H)
$ wstool merge https://raw.githubusercontent.com/ROBOTIS-GIT/robotis_tools/master/.rh_p12_rn.rosinstall (for RH-P12-RN)

(run git clone the selected ROS packages)
$ wstool update -j4

(Install ROS packages that depend on the package you selected)
$ rosdep install --from-paths ~/catkin_ws/src --ignore-src -r -y
or
$ rosdep install --from-paths ~/catkin_ws/src --ignore-src -r -y --os=ubuntu:xenial (if use the Linux Mint)
```



