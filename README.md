[![Hits](https://hits.seeyoufarm.com/api/count/incr/badge.svg?url=https%3A%2F%2Fgithub.com%2Fbigmms%2Fchen_tits21&count_bg=%2379C83D&title_bg=%23555555&icon=&icon_color=%23E7E7E7&title=hits&edge_flat=false)](https://hits.seeyoufarm.com)
# Deep Trident Decomposition Network for Single License Plate Image Glare Removal

## Introduction
We propose a deep trident decomposition network with a large-scale sun glare image dataset for glare removal from single images. Specifically, the proposed network is designed and implemented with a trident decomposition module for decomposing an input glare image into occlusion, foreground, and coarse glare-free images by exploring background features from spatial locations. Moreover, a residual refinement module is adopted to refine the coarse glare-free image into fine glare-free image by learning the residuals from features of multiscale receptive field.

**Authors**: Bo-Hao Chen, Shiting Ye, Jia-Li Yin, Hsiang-Yin Cheng, and Dewang Chen

**Paper**: [PDF](https://ieeexplore.ieee.org/document/9357944)

![](img/main_network_new.png)

## Requirements
* Python 3.5
* numpy 1.15.0
* openCV 4.3.0.38
* keras 2.3.1
* tensorflow 1.14.0
* scikit-image 0.14.2
* pillow 6.2.1
* sewar 0.4.3
* segmentation-models 0.2.1

## Model
Pre-trained models can be downloaded from google drive.

## Dataset
The sun glare image dataset can be downloaded from [here](https://bigmms.github.io/chen_tits21_dataset/).

## Usage
* Training
```bash
$ python train.py --train_path=/your/trainset/path --vaild_path=/your/valset/path --save_model_dir=/save/model/path --load_pretrain=/pretrain/generator/model/path
```
* Testing
```bash
$ python test.py --test_path=/your/testset/path --load_pretrain=/pretrain/generator/model/path
```
## Demo
To test this code
```bash
$ python test.py --test_path=./dataset/test/I --load_pretrain=./save_weight/generator.h5
```

## Qualitative Results
The remaining images were the recovered results using the methods of (a) Engin et al., (b) Li et al., (c) Qian et al., (d) Yang et al., (e) Wei et al., and (f) Zhang et al. as well as (g) our previous method and (h) the method proposed in this study.
![](img/result.png)


## Citation
```
@ARTICLE{9357944,
  author={B. -H. {Chen} and S. {Ye} and J. -L. {Yin} and H. -Y. {Cheng} and D. {Chen}},
  journal={IEEE Transactions on Intelligent Transportation Systems}, 
  title={Deep Trident Decomposition Network for Single License Plate Image Glare Removal}, 
  year={2021},
  volume={},
  number={},
  pages={1-12},
  doi={10.1109/TITS.2021.3058530}}
```
