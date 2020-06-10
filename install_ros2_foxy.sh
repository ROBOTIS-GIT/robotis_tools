#!/bin/bash
# Apache License 2.0
# Copyright (c) 2020, ROBOTIS CO., LTD.

echo ""
echo "[Note] OS version  >>> Ubuntu 20.04 (Focal Fossa) or Linux Mint 21.x"
echo "[Note] Target ROS version >>> ROS 2 Foxy Fitzroy"
echo "[Note] Colcon workspace   >>> $HOME/colcon_ws"
echo ""
echo "PRESS [ENTER] TO CONTINUE THE INSTALLATION"
echo "IF YOU WANT TO CANCEL, PRESS [CTRL] + [C]"
read

echo "[Set the target ROS version and name of colcon workspace]"
name_ros_version=${name_ros_version:="foxy"}
name_colcon_workspace=${name_colcon_workspace:="colcon_ws"}

echo "[Setup Locale]"
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

echo "[Setup Sources]"
sudo rm -rf /var/lib/apt/lists/* && sudo apt update && sudo apt install -y curl gnupg2 lsb-release
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/ros2-latest.list'

echo "[Install ROS 2 packages]"
sudo apt update && sudo apt install -y ros-$name_ros_version-desktop

echo "[Environment setup]"
source /opt/ros/$name_ros_version/setup.sh
sudo apt install -y python3-argcomplete python3-colcon-common-extensions python3-vcstool

echo "[Make the colcon workspace and test colcon build]"
mkdir -p $HOME/$name_colcon_workspace/src
cd $HOME/$name_colcon_workspace
colcon build --symlink-install

echo "[Set the ROS evironment]"
sh -c "echo \"alias nb='nano ~/.bashrc'\" >> ~/.bashrc"
sh -c "echo \"alias sb='source ~/.bashrc'\" >> ~/.bashrc"
sh -c "echo \"alias gs='git status'\" >> ~/.bashrc"
sh -c "echo \"alias gp='git pull'\" >> ~/.bashrc"

sh -c "echo \"alias cw='cd ~/$name_colcon_workspace'\" >> ~/.bashrc"
sh -c "echo \"alias cs='cd ~/$name_colcon_workspace/src'\" >> ~/.bashrc"
sh -c "echo \"alias cb='cd ~/$name_colcon_workspace && colcon build --symlink-install && source ~/.bashrc'\" >> ~/.bashrc"

sh -c "echo \"source /opt/ros/$name_ros_version/setup.bash\" >> ~/.bashrc"
sh -c "echo \"source ~/$name_colcon_workspace/install/local_setup.bash\" >> ~/.bashrc"

source $HOME/.bashrc

echo "[Complete!!!]"
exit 0
