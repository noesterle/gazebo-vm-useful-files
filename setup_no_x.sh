ROS_DISTRO="kinetic"

if [ -d "/opt/ros/$ROS_DISTRO/share/turtlebot3_gazebo/launch" ] 
then
	cp -i ./turtlebot3_house_no_x.launch /opt/ros/$ROS_DISTRO/share/turtlebot3_gazebo/launch/turtlebot3_house_no_x.launch
else
	echo "/opt/ros/$ROS_DISTRO/share/turtlebot3_gazebo/launch does not exist. Check that 'ros-$ROS_DISTRO-turtlebot3-simulations' is installed."
fi

if [ -d "/opt/ros/$ROS_DISTRO/share/turtlebot3_gazebo/worlds" ] 
then
	cp -i ./turtlebot3_house_no_x.launch /opt/ros/$ROS_DISTRO/share/turtlebot3_gazebo/worlds/turtlebot3_house_no_x.world
else
	echo "/opt/ros/$ROS_DISTRO/share/turtlebot3_gazebo/worlds does not exist. Check that 'ros-$ROS_DISTRO-turtlebot3-simulations' is installed."
fi
