ROS_DISTRO="kinetic"

sudo apt install gazebo7
sudo apt install ros-$ROS_DISTRO-turtlebot3
sudo apt install ros-$ROS_DISTRO-turtlebot3-simulations
sudo apt install libjansson-dev nodejs npm nodejs-legacy libboost-dev imagemagick libtinyxml-dev mercurial cmake build-essential
cd ~; hg clone https://bitbucket.org/osrf/gzweb
cd ~/gzweb; hg up gzweb_1.4.0
npm run deploy --- -t -m local
