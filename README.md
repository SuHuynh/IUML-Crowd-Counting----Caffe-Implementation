
## IUML: INCEPTION U-NET BASED MULTI-TASK LEARNING FOR DENSITY LEVEL CLASSIFICATION AND CROWD DENSITY ESTIMATION
By Van-Su Huynh, Vu-Hoang Tran, and Chin-Chung Huang

![](https://github.com/SuHuynh/IUML-Crowd-Counting/img/Fig_overall.png)

### Introduction
This project is an implementation of IUML network for crowd counting. IUML network could handle various types of scale problem caused by: depth variation, height variation, the variation caused by density levels, and image resolution difference 

### Dependencies and Installation 
We have tested the implementation on Window with GPU Nvidia 1080TI, CUDA8 and CuDNN v5 . The other version should be working. Caffe installation is pre-required.

### Dataset preparation
The ShanghaiTech dataset (1) could be dowloaded [here]( https://www.dropbox.com/s/fipgjqxl7uj8hd5/ShanghaiTech.zip?dl=0).
The UCF_CC_50 dataset (2) could be dowloaded [here](https://www.crcv.ucf.edu/data/ucf-cc-50/).

After getting the dataset, using the codes in ```data_preparation``` to create the training patch.
Each original image, we randomly generate 30 patches.
We applied a geometry-adaptive kernel (1) which results in a smaller kernel size for a smaller object and a larger kernel size for a larger object.

### Training and Test
The hyper-parameters are denoted in ```file_solver.prototxt ```
The training model was defined in ``` file_train.prototxt ```
The testing model was defined in ``` deploy.prototxt ```

### References
(1) Y. Zhang, D. Zhou, S. Chen, S. Gao, and Y. Ma, “Single-image crowd counting via multi-column convolutional neural network,” CVPR, 2016.

(2) Haroon Idrees, Imran Saleemi, Cody Seibert, and Mubarak Shah, “Multi-source multi-scale counting in extremely dense crowd images,” in Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition, pp. 2547-2554, 2013.



