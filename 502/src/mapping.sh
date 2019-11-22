roslaunch surfel_fusion global_map_fusion.launch

rosrun vins vins_node ~/ROS/AeroGroundSLAM/502/src/VINS-Fusion/config/realsense/realsense_stereo_imu_config.yaml

rosrun loop_fusion loop_fusion_node ~/ROS/AeroGroundSLAM/502/src/VINS-Fusion/config/realsense/realsense_stereo_imu_config.yaml













rosrun vins vins_node ~/ROS/AeroGroundSLAM/502/src/VINS-Fusion/config/Flir/Flir_stereo_imu_configFront.yaml

rosrun loop_fusion loop_fusion_node ~/ROS/AeroGroundSLAM/502/src/VINS-Fusion/config/Flir/Flir_stereo_imu_configFront.yaml
