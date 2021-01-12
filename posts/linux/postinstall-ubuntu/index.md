# Ubuntu Postinstall


Things to do after installing Ubuntu 20.04.

<!--more-->

## Install traditional Chinese in language support

Default locale in Ubuntu for traditional Chinese (Taiwan) is `lzh_TW` rather than `zh_TW`.

Install the Traditional Chinese locale in `Language Support` and then set locale to `Taiwan` to solve this problem.

## Post install script

Save this list in `pkgs.txt`

```txt
# Package list for Ubuntu 20.04

# Developement
cmake
build-essential
git
git-lfs
python3-pip
docker-ce
docker-ce-cli
containerd.io
# code
cuda

# Network
cifs-utils
vivaldi-stable
brave-browser
# google-chrome-stable
evolution
telegram

# System
chrome-gnome-shell
gnome-tweak-tool
parallel
pv
progress
htop
baobab
bleachbit
synaptic
apt-xapian-index
neofetch
appimagelauncher
linux-xanmod
zsh

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
qt5ct

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
```

Run this script
```bash
# Setup NCHC mirror
sudo -v
sudo sed -i 's/us.archive.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list
sudo sed -i 's/tw.archive.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list
sudo sed -i 's/security.ubuntu.com/free.nchc.org.tw/g' /etc/apt/sources.list
sudo apt update && sudo apt install -y apt-transport-https ca-certificates curl git gnupg-agent software-properties-common python3-pip

# Run this line if you need Wine and games
# sudo dpkg --add-architecture i386

# Vivaldi
wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo tee /etc/apt/trusted.gpg.d/vivaldi.asc > /dev/null
echo "deb https://repo.vivaldi.com/archive/deb/ stable main" | sudo tee /etc/apt/sources.list.d/vivaldi.list > /dev/null

# Brave
wget -qO- https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo tee /etc/apt/trusted.gpg.d/brave-browser-release.asc > /dev/null
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list > /dev/null

# Anydesk
wget -qO- https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo tee /etc/apt/trusted.gpg.d/anydesk.asc > /dev/null
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list > /dev/null

# docker (Only supports LTS version)
wget -qO- https://download.docker.com/linux/ubuntu/gpg | sudo tee /etc/apt/trusted.gpg.d/docker.asc > /dev/null
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Zotero
wget -qO- https://github.com/retorquere/zotero-deb/releases/download/apt-get/install.sh | sudo bash > /dev/null

# Typora
wget -qO - https://typora.io/linux/public-key.asc | sudo tee /etc/apt/trusted.gpg.d/typora.asc > /dev/null
echo 'deb https://typora.io/linux ./' | sudo tee /etc/apt/sources.list.d/typora.list > /dev/null

# Xanmod linux kernel
wget -qO- https://dl.xanmod.org/gpg.key | sudo tee /etc/apt/trusted.gpg.d/xanmod.asc > /dev/null
echo 'deb http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-kernel.list > /dev/null

sudo add-apt-repository -yu ppa:appimagelauncher-team/stable  # AppImageLauncher
sudo add-apt-repository -yu ppa:git-core/ppa              # Git stable releases
sudo add-apt-repository -yu ppa:alessandro-strada/ppa     # Google drive client
sudo add-apt-repository -yu ppa:papirus/papirus           # Papirus icon theme
sudo add-apt-repository -yu ppa:yann1ck/onedrive          # OneDrive client
# sudo add-apt-repository -yu ppa:graphics-drivers/ppa      # Nvidia Proprietary Driver
sudo add-apt-repository -yu ppa:atareao/telegram          # Telegram
sudo add-apt-repository -yu ppa:libreoffice/ppa

# Set up apt-fast
sudo add-apt-repository -y ppa:apt-fast/stable
echo debconf apt-fast/maxdownloads string 16 | sudo debconf-set-selections
echo debconf apt-fast/dlflag boolean true | sudo debconf-set-selections
echo debconf apt-fast/aptmanager string apt | sudo debconf-set-selections

sudo apt update
sudo apt install -y apt-fast
sudo apt-fast full-upgrade -y

sed 's/#.*$//' pkgs.txt | xargs sudo apt-fast install -y

wget

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

## AMD GPU setup

AMD Mesa Driver Install[^ChrisTitus]

```bash
sudo add-apt-repository ppa:kisak/kisak-mesa -yu
sudo apt update && sudo apt full-upgrade -y
```

[^ChrisTitus]: [The Ultimate Linux Gaming Guide](https://christitus.com/ultimate-linux-gaming-guide/) by Chris Titus

## Extensions for gnome shell

From the [gnome shell website](https://extensions.gnome.org/) + browser addon

- [User themes](https://extensions.gnome.org/extension/19/user-themes/)
- [Sound Input & Output Device Chooser](https://extensions.gnome.org/extension/906/sound-output-device-chooser/)
- [Screenshot Tool](https://extensions.gnome.org/extension/1112/screenshot-tool/)
- [Dash to panel](https://extensions.gnome.org/extension/1160/dash-to-panel/) for a Win-8sque experience
- [Material shell](https://extensions.gnome.org/extension/3357/material-shell/) for tiling windows experience

## Download binaries if needed

- [Telegram](https://telegram.org/)
- [MarkText (AppImage)](https://github.com/marktext/marktext)
- [Libreoffice (AppImage)](https://www.libreoffice.org/download/appimage/)
- [FreeFileSync](https://freefilesync.org/)
- [Starship](https://starship.rs/)
- [Hugo](https://github.com/gohugoio/hugo/releases/)
- [Pandoc](https://github.com/jgm/pandoc/releases/)
- [Virtualbox](https://www.virtualbox.org/)

