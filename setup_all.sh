CURRENT_DIR=`pwd`
echo "source $CURRENT_DIR/ros_cmds.sh" >> ~/.bashrc

./setup_gzweb.sh
./setup_no_x.sh

source ~/.bashrc
