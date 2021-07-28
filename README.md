# balena-OpenVino

This repo allows you to run OpenVINO AI/ML demos on Intel x86 hardware like a NUC, in a container, managed by balenaCloud.  You need a monitor, keyboard/mouse, and USB webcam hooked up to the NUC.

[![balena deploy button](https://www.balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/balena-io-examples/balena-OpenVino)

This is interesting for several reasons, but first and foremost it allows you to remotely update an Edge AI device and push new applications and models to a device no matter where it is located.  In this repo, as a sample, we download and install Object Detection and Human Pose Estimation, along with their corresponding models: `pedestrian-detection-adas-0002`, `product-detection-0001`, and `human-pose-estimation-0001`.

You will need to go through the normal balena device deployment steps, as documented here:  [https://www.balena.io/docs/learn/getting-started/intel-nuc/python/](https://www.balena.io/docs/learn/getting-started/intel-nuc/python/)

Once your device is online, this repo has been cloned and pushed to the device, and the containers are running, you can hot-swap among the application and the model via Service Variables in the balenaCloud dashboard:

You need to define 3 Service Variables:  `DEMO`, `MODEL`, and `ARCHITECTURE_TYPE`

The possible values for `DEMO` are: 
```
object_detection_demo
human_pose_estimation_demo
```

For the `MODEL` Service Variable, if you have selected Object Detection, you have a choice of two possible values to enter: `pedestrian-detection-adas-0002` which will detect humans, or `product-detection-0001` which will detect about a dozen or so common grocery items. 

If you seledcted Human Pose Estimation, then you only have one choice, and you will need to enter `human-pose-estimation-0001` for the Model.

Finally, the `ARCHITECTURE_TYPE` Variable, has only 1 possible candidate for each.  If you selected Object Detection, you will need to enter `ssd` as the value, but if you selected Human Post Estimation then you need to enter `openpose`.

Once your 3 values are entered, your container will start, and you'll see the device do inferencing on the live camera feed!

