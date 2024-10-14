# Use the official Ubuntu 16.04 as a base image
FROM ubuntu:18.04
#FROM nvidia/cuda:11.7.1-cudnn8-devel-ubuntu20.04

ENV DEBIAN_FRONTEND noninteractive
#ENV LD_LIBRARY_PATH=/usr/local/lib:/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH

# Update packages and install any needed dependencies
RUN apt-get update && apt-get install -y \    
    software-properties-common \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN add-apt-repository ppa:deadsnakes/ppa -y

RUN apt-get update && apt-get install -y \
    python3.7 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
    
RUN ln -sf /usr/bin/python3.7 /usr/bin/python3

RUN apt-get update && apt-get install -y \
    # Add your dependencies here, if any \
    build-essential \
    python3-pip \
    apt-utils \
    libgoogle-glog-dev \ 
    libgflags-dev \
    libjsoncpp-dev \
    libeigen3-dev \
    build-essential \
    git \
    cmake \
    cmake-curses-gui \
    libgl1-mesa-dev \
    libwayland-dev \
    libxkbcommon-dev \
    wayland-protocols \ 
    libegl1-mesa-dev \
    libc++-dev \
    libglew-dev \
    libjpeg-dev \
    libpng-dev \
    libavcodec-dev \
    libavutil-dev \
    libavformat-dev \
    libswscale-dev \
    libavdevice-dev \
    curl \
    wget \
    nano \
    unzip \
    zip \
    libopencv-dev \
    libboost-all-dev \
    libepoxy-dev \
    sudo \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
    
RUN pip3 install --upgrade pip

#RUN pip3 install numpy
#RUN pip3 install matplotlib
#RUN pip3 install opencv-python
#RUN pip3 install azure-storage-blob
#RUN pip3 install torch==2.0.0+cu117 --extra-index-url https://download.pytorch.org/whl/cu117
#RUN pip3 install torchvision==0.15.0+cu117 --extra-index-url https://download.pytorch.org/whl/cu117
# COPY Jackal_Visual_Odom.zip .

#COPY requirements.txt .

#RUN pip3 install -r requirements.txt

#RUN pip3 install numpy matplotlib opencv-python azure-storage-blob \
    #torch==2.0.0+cu117 torchvision==0.15.0+cu117 --extra-index-url https://download.pytorch.org/whl/cu117

RUN useradd -m ubuntu1804 && echo "ubuntu1804:1234" | chpasswd && adduser ubuntu1804 sudo

# Switch to the custom user
USER ubuntu1804

# Set the workdir
WORKDIR /home/ubuntu1804

RUN pip3 install matplotlib==3.5.1
RUN pip3 install numpy==1.18.5
RUN pip3 install opencv-python==4.10.0.82
RUN pip3 install Pillow==6.2.1
RUN pip3 install scikit-image==0.14.2
RUN pip3 install tensorflow==1.14.0
RUN pip3 install sewar==0.4.3
RUN pip3 install segmentation-models==0.2.1
RUN pip3 install keras==2.3.1
RUN pip3 install keras-unet==0.1.0
RUN pip3 install h5py==2.10.0

SHELL ["/bin/bash", "-c"]

RUN mkdir -p /home/ubuntu1804/src/chen_tits21

# Shell setup
SHELL ["/bin/bash", "-c"]
