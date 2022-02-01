#!/usr/bin/bash
export DISPLAY=:0
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket
X &
xfce4-session &
source /opt/intel/openvino_2021.4.689/bin/setupvars.sh >> ~/.bashrc
python3 /opt/intel/openvino_2021.4.689/deployment_tools/open_model_zoo/demos/$DEMO/python/$DEMO.py -i /dev/video0 -m /opt/intel/openvino_2021.4.689/deployment_tools/open_model_zoo/demos/models/intel/$MODEL/FP16/$MODEL.xml -at $ARCHITECTURE_TYPE -d $ACCELERATOR

