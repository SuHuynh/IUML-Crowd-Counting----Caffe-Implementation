# IUML-Crowd-Counting
counting people in crowd image

## IUML: INCEPTION U-NET BASED MULTI-TASK LEARNING FOR DENSITY LEVEL CLASSIFICATION AND CROWD DENSITY ESTIMATION
By Van-Su Huynh, Vu-Hoang Tran, and Chin-Chung Huang

### Introduction
This project is an implementation of IUML network for crowd counting. IUML network could handle various types of scale problem caused by: depth variation, height variation, the variation caused by density levels, and image resolution difference 

### Dependencies and Installation 
We have tested the implementation on Window with GPU Nvidia 1080TI, CUDA8 and CuDNN v5 . The other version should be working. Caffe installation is pre-required.

### Dataset preparation
The ShanghaiTech dataset (1) could be dowloaded in [here]( https://www.dropbox.com/s/fipgjqxl7uj8hd5/ShanghaiTech.zip?dl=0)
The UCF_CC_50 dataset (2) could be dowloaded in [here](https://www.crcv.ucf.edu/data/ucf-cc-50/)


### Training and Test
The hyper-parameters are denoted in ```file_solver.prototxt ```
The training model was defined in ``` file_train.prototxt ```
The testing model was defined in ``` deploy.prototxt ```



