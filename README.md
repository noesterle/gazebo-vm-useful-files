# Description
This is a repository for useful files and scripts to help setup a headless Ubuntu machine to run Gazebo and GzWeb.

This assumes that ROS installed and that you'll be using the pre-made Turtlebot3 house simulations supplied by ROS packages. 

# Structure
`setup_all.sh` is designed to add useful ROS commands and environment variables to `~/.bashrc` by adding `source path/to/ros_cmds.sh` to the end of `~/.bashrc`.

Next Gazebo will be installed.

Next, some Turtlebot3 related packages will be installed to simulate using a Turtlebot3 in Gazebo.

Next dependencies for GzWeb will be installed, and the GzWeb repository will be cloned. 
Gzweb 1.4.0 is set to be used, if the GzWeb installation site recommends to use a different version then edit as needed.
A deploy command will be run. 
This command should use local information to generate the models to render during the simulation. 
In the past, I've run into seg-faults while running a version of this command which fetched model information from the web which mean nothing had textures to render.

Following that, the `*_no_x.*` files will be placed in their respective places. 
Using these files will allow Gazebo simulations to start without needing the GUI to start.

Once all that is complete, `~/.bashrc` will be sourced so the ROS and Gazebo environment variables and aliases can be used.
At the bottom of `ros_cmds.sh` is a description of how the aliases and other commands were used together to run GzWeb with all dependant processes detached of the terminal.

# Things to Check Before Running
This section lists things in each file that may need to be updated as ROS and Ubuntu release new versions or as other VM settings are changed.

## setup_gzweb.sh
Edit ROS_DISTRO string as needed, and edit the version of Gazebo installed for the target Ubuntu release and ROS version.

## setup_no_x.sh
Edit ROS_DISTRO string as needed.

## ros_cmds.sh
Edit ROS_DISTRO, ROS_HOSTNAME, TB3_MODEL strings as needed.

If these variables have already been added, comment out either the `ros_cmds.sh` line or the other variables that would overwritten by `ros_cmds.sh`. 
Don't forget to `source ~/.bashrc` afterwards to make sure it takes effect.
