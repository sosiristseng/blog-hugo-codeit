---
title: "Docker Nvidia"
date: 2020-10-30T17:18:27+08:00
tags: ["docker", "cuda", "tenserflow", "tensorman", "GPU"]
categories: ["Linux", "Packages"]
---

Run CUDA in docker container with nvidia GPUs.

Assuming you have nvidia GPU and driver installed.

CUDA runtime is **not** needed on the host system.

<!--more-->

## PopOS

[`tensorman`](https://github.com/pop-os/tensorman) is available in its repository along with the nvidia container package.

```bash
sudo apt install nvidia-container-runtime tensorman
```

## Ubuntu (LTS)

Source:
- [@Grady Huang](https://medium.com/@grady1006/ubuntu18-04%E5%AE%89%E8%A3%9Ddocker%E5%92%8Cnvidia-docker-%E4%BD%BF%E7%94%A8%E5%A4%96%E6%8E%A5%E9%A1%AF%E5%8D%A1-1e3c404c517d) (Chinese traditional)
- [@nvidia](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker)

1. Install `docker`

```bash
wget -qO- https://download.docker.com/linux/ubuntu/gpg | sudo tee /etc/apt/trusted.gpg.d/docker.asc > /dev/null
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update && sudo apt install docker-ce docker-ce-cli containerd.io
```

2. Install `nvidia-container-toolkit`

```bash
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
wget -qO- https://nvidia.github.io/nvidia-docker/gpgkey | sudo tee /etc/apt/trusted.gpg.d/nvidia-docker.asc > /dev/null
wget -qO- https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list > /dev/null

sudo apt update && sudo apt install nvidia-container-toolkit
sudo systemctl restart docker
```

## Arch

For Arch and derivatives ( enOS, Garuda, Manjaro...)

1. Install `docker`

```bash
sudo pacman -S docker
sudo systemctl enable --now docker.service
```

2. Install [`nvidia-container-toolkit` @ AUR](https://aur.archlinux.org/packages/nvidia-container-toolkit/)

```bash
paru -S nvidia-container-toolkit
sudo systemctl restart docker
```

## Test your installation

```bash
sudo docker run --gpus all nvidia/cuda:10.0-base nvidia-smi
```
