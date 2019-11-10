roslaunch surfel_fusion global_map_fusion.launch

rosrun vins vins_node ~/ROS/502/src/VINS-Fusion/config/realsense/realsense_stereo_imu_config.yaml

rosrun loop_fusion loop_fusion_node ~/ROS/502/src/VINS-Fusion/config/realsense/realsense_stereo_imu_config.yaml
