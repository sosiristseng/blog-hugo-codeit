# KDE Neon Postinstall


Things to do after installing KDE neon 20.04.

<!--more-->

## Post install script

Save this list in `pkgs.txt`

```txt
# Package list for KDE Neon

# Developement
cmake
build-essential
git
git-lfs
python3-pip
docker-ce
docker-ce-cli
containerd.io
code
kio-extras

# Network
cifs-utils
vivaldi-stable
brave-browser

# System
parallel
pv
progress
htop
synaptic
apt-xapian-index
neofetch
appimagelauncher
linux-xanmod
zsh
kubuntu-driver-manager
kio-extras

# Locale
ibus
ibus-chewing

# Media
ffmpeg
smplayer

# Themes
papirus-icon-theme
qt5-style-kvantum-themes
qt5-style-kvantum

# Fonts
fonts-noto
fonts-roboto
fonts-wqy-microhei
fonts-wqy-zenhei
fonts-open-sans

# Editors
typora
zotero
libreoffice
texlive
kate
```

Run this script

```bash
# Setup NCHC mirror
sudo -v
sudo sed -i 's/us.archive.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list
sudo sed -i 's/archive.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list
sudo sed -i 's/security.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list
sudo apt update && sudo apt install -y apt-transport-https ca-certificates curl git gnupg-agent software-properties-common python3-pip

# Run this line if you need Wine and games
# sudo dpkg --add-architecture i386

# Vivaldi
wget -qO /etc/apt/trusted.gpg.d/vivaldi.asc https://repo.vivaldi.com/archive/linux_signing_key.pub
echo "deb https://repo.vivaldi.com/archive/deb/ stable main" | sudo tee /etc/apt/sources.list.d/vivaldi.list

# Brave
wget -qO /etc/apt/trusted.gpg.d/brave-browser-release.asc https://brave-browser-apt-release.s3.brave.com/brave-core.asc
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

# Anydesk
wget -qO /etc/apt/trusted.gpg.d/anydesk.asc https://keys.anydesk.com/repos/DEB-GPG-KEY
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list

# docker (Only supports LTS version)
wget -qO /etc/apt/trusted.gpg.d/docker.asc https://download.docker.com/linux/ubuntu/gpg
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list

# Zotero
wget -qO- https://github.com/retorquere/zotero-deb/releases/download/apt-get/install.sh | sudo bash

# Typora
sudo wget -qO /etc/apt/trusted.gpg.d/typora.asc https://typora.io/linux/public-key.asc
echo 'deb https://typora.io/linux ./' | sudo tee /etc/apt/sources.list.d/typora.list

# Xanmod linux kernel
sudo wget -qO /etc/apt/trusted.gpg.d/xanmod.asc https://dl.xanmod.org/gpg.key
echo 'deb http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-kernel.list

# VS code
sudo wget -qP /etc/apt/trusted.gpg.d/ https://packages.microsoft.com/keys/microsoft.asc
echo 'deb [arch=amd64] https://packages.microsoft.com/repos/code stable main' | sudo tee /etc/apt/sources.list.d/vscode.list

sudo add-apt-repository -y ppa:appimagelauncher-team/stable  # AppImageLauncher
sudo add-apt-repository -y ppa:git-core/ppa                  # Git stable releases
sudo add-apt-repository -y ppa:alessandro-strada/ppa         # Google drive client
sudo add-apt-repository -y ppa:papirus/papirus               # Papirus icon theme
sudo add-apt-repository -y ppa:yann1ck/onedrive              # OneDrive client
sudo add-apt-repository -y ppa:kisak/kisak-mesa              # Mesa driver
sudo add-apt-repository -y ppa:libreoffice/ppa

sudo apt update && sudo apt full-upgrade -y

sed 's/#.*$//' pkgs.txt | xargs sudo apt install -y

[[ -x "$(command -v pip3)" ]] && pip3 install -U --user glances bpytop jill youtube-dl
```

## Nvidia GPU

Nvidia CUDA 11 runtime and compatible GPU driver[^cuda]

```bash
NVREPO=https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64

# Pin the repo to higher priority
wget -qO- "${NVREPO}/cuda-ubuntu2004.pin" | sudo tee /etc/apt/preferences.d/cuda-repository-pin-600 > /dev/null

# Add keys
wget -qO- "${NVREPO}/7fa2af80.pub" | sudo tee /etc/apt/trusted.gpg.d/nvidia-cuda.asc > /dev/null

# Add repo entry
echo "deb ${NVREPO} /" | sudo tee /etc/apt/sources.list.d/cuda.list > /dev/null
sudo apt update && sudo apt full-upgrade -y && sudo apt -y install cuda
```

[^cuda]: [CUDA Toolkit 11.1 Update 1 Downloads](https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=2004&target_type=debnetwork)

## System Settings

- Double click instead of single `Workspace behavior` -> `General behavior` -> `click behavior`
- You may disable the KDE `wallet` subsystem.
- Start with an empty session in `Desktop session`
- Disable also index file content in `File search`
- Reduce swap use:
  ```bash
  echo 'vm.swappiness=10' | sudo tee -a /etc/sysctl.conf
  ```
- Input method: autostart `ibus-daemon -drx`

## Download binaries if needed

- [Telegram](https://telegram.org/)
- [MarkText (AppImage)](https://github.com/marktext/marktext)
- [FreeFileSync](https://freefilesync.org/)
- [Starship](https://starship.rs/)
- [Hugo](https://github.com/gohugoio/hugo/releases/)
- [Pandoc](https://github.com/jgm/pandoc/releases/)
- [Virtualbox](https://www.virtualbox.org/)

