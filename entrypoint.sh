#!/bin/bash
set -m

# Source ros2 environment on each shell
echo "source /opt/humble/setup.bash" >> ~/.bashrc
echo "source /app/install/setup.bash" >> ~/.bashrc

# Setup ros environment. Redundant.
source "/opt/ros/humble/setup.bash"
source "/app/install/setup.bash"


ros2 launch skuid-nav2-bringup skuid-nav2.launch.py autostart:=true

# takes any command given as argument and executes it, namely the "command on the docker compose file of the service"
exec "$@"