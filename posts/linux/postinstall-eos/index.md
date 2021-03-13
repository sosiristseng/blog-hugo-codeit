# Endeavour OS postinstall


Things to do after installing [Endeavour OS](https://endeavouros.com/latest-release/).

<!--more-->

## Find fastest repository server

Click `select mirror` in the welcome APP and save the mirror list.

## Install kernel

Install `akm` kernel manager

```bash
sudo pacman -S akm
```

## Install pikaur

Instatuctions from [its Github repo](https://github.com/actionless/pikaur).

```bash
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -fsri
```

## Postinstall script

Save the content below as `pkgs.txt`

```txt
# Development
pikaur
pamac-aur
pigz
lzop
zstd
base-devel
python-pip
cmake
git
git-lfs
gitkraken
visual-studio-code-bin

# Text editing
texlive-core
tectonic-bin
pandoc
pandoc-citeproc
pandoc-crossref
typora
libreoffice-fresh
zotero

# Network
vivaldi
vivaldi-ffmpeg-codecs
brave-bin
cifs-utils
gufw
telegram-desktop
anydesk

# System
htop
bpytop
zsh
timeshift
cronie
docker
appimagelauncher
parallel
trash-cli

# Input methods
ibus
ibus-chewing

# Fonts
ttf-roboto
ttf-fira-sans
noto-fonts
noto-fonts-cjk
noto-fonts-emoji
wqy-microhei
wqy-zenhei
ttf-opensans
nerd-fonts-hack

# Multimedia
smplayer
smplayer-skins
smplayer-themes
ffmpeg
youtube-dl

# Themes for KDE
plasma-browser-integration
kvantum-qt5
kvantum-theme-materia
papirus-icon-theme
materia-gtk-theme
materia-kde
qogir-icon-theme-git
qogir-gtk-theme-git
qogir-kde-theme-git
```

Run this script:

```bash
# Setup ibus
cat << "EOF" >> ~/.xprofile
# ~/.xprofile
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
ibus-daemon -drx
EOF


# Setup environment variables in profile
cat << "EOF" >> ~/.profile
# ~/.profile

[[ -d "${HOME}/.local/bin" ]] && PATH="${HOME}/.local/bin:${PATH}"
[[ -d "${HOME}/.cargo/bin" ]] && PATH="${HOME}/.cargo/bin:${PATH}"
[[ -d "${HOME}/.go/bin" ]] && PATH="${HOME}/.go/bin:${PATH}"

export BROWSER=$(command -v xdg-open)
export EDITOR=$(command -v nano)
export JULIA_NUM_THREADS=$(nproc)
export ELECTRON_TRASH=gio
EOF

# First phase system setup with services
pikaur -S --noconfirm --needed teamviewer docker timeshift cronie
sudo systemctl enable --now cronie.service
sudo systemctl enable --now fstrim.timer
sudo systemctl enable --now docker.service
sudo systemctl disable org.cups.cupsd.service || echo "CUPS not installed!"
sudo systemctl enable --now org.cups.cupsd.socket || echo "CUPS not installed!"

# Install the rest
# Check pkgs.txt before running the line below
sed 's/#.*$//' pkgs.txt | xargs pikaur -S --noconfirm --needed
```

## If using NVIDIA GPU

Install Nvidia DKMS driver for all kernels and CUDA runtime:

```bash
sudo pacman -S nvidia-dkms cuda cudnn
```

## Theme settings

### KDE

- Kvantum theme: Qogir Dark
- Global theme: Qogir Dark
- Plasma style: Qogir Dark
- Application style: kvantum
- GTK style: Qogir Dark
- Window decorations: Qogir Dark
- Colors: Qogir Dark
- Fonts
  - General: Roboto medium 10.5pts
  - Monospace: Hack Nerd Font 10.5pt
- Icons: Qogir Dark
- Cursors: Qogir Dark

## Additional packages

Use `pikaur -S <pkgname>`

- [PyCharm](https://www.jetbrains.com/pycharm/): `pycharm-community-jre`
- [Anydesk](https://anydesk.com/en/downloads/linux): `anydesk-bin`
- Java runtime: `jre-openjdk`
- Flatpak: `flatpak`
- Snap: `snapd`
- Google drive client: `google-drive-ocamlfuse-opam`
- Onedrive client: `onedrive-abraunegg`
- FreeFileSync: `freefilesync-bin`
- Bottom: `bottom-bin`

### VirtualBox

From [VirtualBox@eos](https://endeavouros.com/docs/applications/how-to-install-virtualbox/)

Install the packages and add your username to the `vbox` group.

```bash
sudo pikaur -S virtualbox virtualbox-guest-iso net-tools virtualbox-ext-oracle

sudo gpasswd -a username vboxusers
```

