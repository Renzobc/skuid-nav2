import os
from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument
from launch.actions import ExecuteProcess
from launch.conditions import IfCondition, UnlessCondition
from launch.substitutions import Command, LaunchConfiguration
from launch_ros.actions import Node
from launch_ros.substitutions import FindPackageShare
from launch_ros.actions import ComposableNodeContainer
from launch_ros.descriptions import ComposableNode

from launch.actions import IncludeLaunchDescription
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.substitutions import PathJoinSubstitution


def generate_launch_description():

    # Path to the package

    pkg_share = FindPackageShare(
        package='skuid-nav2-bringup').find('skuid-nav2-bringup')

    # Path to slam_tool_box configuration

    default_slam_config_file = os.path.join(
        pkg_share, 'config/slam_toolbox_async_param.yaml')

    # Path to costmaps config files

    default_costmap_config_file = os.path.join(
        pkg_share, 'config/params_nav2_bringup.yaml')

    # They are used to declare / store but NOT Expose values of launch arguments in the above variables and to pass them to required actions.
    use_sim_time = LaunchConfiguration('use_sim_time')
    slam_params_file = LaunchConfiguration('slam_params_file')
    costmap_params_file = LaunchConfiguration('costmap_params_file')
    autostart = LaunchConfiguration('autostart')

    # use_sim_bridge = LaunchConfiguration('use_sim_bridge')

    # Declare / Expose launch arguments to other launch files as well as to the ros2 daemon

    declare_slam_params_file_cmd = DeclareLaunchArgument(
        'slam_params_file', default_value=default_slam_config_file)

    declare_costmap_params_file_cmd = DeclareLaunchArgument(
        name='costmap_params_file',
        default_value=default_costmap_config_file,
        description='params file for costmap')

    declare_use_sim_time_cmd = DeclareLaunchArgument(
        name='use_sim_time',
        default_value='True',
        description='Use gazebo sim clock if true')

    declare_autostart_cmd = DeclareLaunchArgument(
        'autostart',
        default_value='true',
        description='Automatically startup the nav2 stack of Node lifecycle')

    # Specify the actions

    start_slam_toolbox = IncludeLaunchDescription(
        PythonLaunchDescriptionSource([
            PathJoinSubstitution([
                # Dependency of "slam_toolbox"
                FindPackageShare('slam_toolbox'),
                'launch',
                'online_async_launch.py'
            ])
        ]),
        launch_arguments={
            'slam_params_file': slam_params_file,
            'use_sim_time': use_sim_time
        }.items())

    costmap = IncludeLaunchDescription(
        PythonLaunchDescriptionSource([
            PathJoinSubstitution([
                # Dependency of "nav2_bringup"
                FindPackageShare('nav2_bringup'),
                'launch',
                'navigation_launch.py'
            ])
        ]),
        launch_arguments={
            'params_file': costmap_params_file,
            'use_sim_time': use_sim_time,
            'autostart': autostart
        }.items())

    # Create the launch description and populate

    ld = LaunchDescription()

    # Declare launch options

    ld.add_action(declare_use_sim_time_cmd)
    ld.add_action(declare_autostart_cmd)
    ld.add_action(declare_slam_params_file_cmd)
    ld.add_action(declare_costmap_params_file_cmd)

    # add any actions

    ld.add_action(costmap)
    ld.add_action(start_slam_toolbox)

    return ld
