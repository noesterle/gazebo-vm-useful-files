### Exports for ROS ###
export LANG="C.UTF-8"
export LC_ALL="C.UTF-8"
export ROS_DISTRO="kinetic"
export ROS_HOSTNAME="appinventor.se.rit.edu" # This assumes this is an RIT hosted Virtual Machine, and `appinventor` is the entry in `/etc/hostname`
export ROS_MASTER_URI="http://$ROS_HOSTNAME:11311/"

### Source ROS and Gazebo Setup files ###
source /usr/share/gazebo/setup.sh
source /opt/ros/$ROS_DISTRO/setup.bash

### Exports for Gazebo ###
TB3_MODEL=burger
export TURTLEBOT3_MODEL=${TB3_MODEL}

### Aliases useful for running Gazebo and Ros Commands ###
#Below requires roscore to be running, gazebo installed, and turtlebot3 gazebo packages to be installed.
alias run-gazebo-turtlebot3='roslaunch turtlebot3_gazebo turtlebot3_house_no_x.launch' 
alias ros-bot-twist="rostopic pub /cmd_vel geometry_msgs/Twist -r 10 -- '[-0.05, 0.0, 0.0]' '[0.0, 0.0, 0.9]'" # Ros Robot twists in a small circle
alias ros-bot-stop="rostopic pub /cmd_vel geometry_msgs/Twist -r 10 -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'"

### Info about running GzWeb ###
# Running `roscore &` will run ROS detached from the terminal. 
# `run-gazebo-turtlebot3 &` will run it detached of the of the terminal. 
# Then going to `~/gzweb` and running `npm start &` will run GzWeb detached of the terminal.
# These three actions will allow you to see the turtlebot3 at any time in the simulator over the web at `appinventor.se.rit.edu:8080`.
