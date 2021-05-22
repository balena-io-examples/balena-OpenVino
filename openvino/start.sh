#!/usr/bin/bash
export DISPLAY=:0
startx xfce4-session &
source /opt/intel/openvino_2021.3.394/bin/setupvars.sh >> ~/.bashrc
python3 /opt/intel/openvino_2021.3.394/deployment_tools/open_model_zoo/demos/object_detection_demo/python/object_detection_demo.py -i /dev/video0 -m /opt/intel/openvino_2021.3.394/deployment_tools/open_model_zoo/demos/models/intel/pedestrian-detection-adas-0002/FP16/pedestrian-detection-adas-0002.xml -at ssd -d MYRIAD
