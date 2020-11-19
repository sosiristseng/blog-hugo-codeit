---
title: "Materia and Papirus Themes"
date: 2020-10-21T17:21:16+08:00
tags: ["roboto", "papirus", "materia", "theme"]
categories: ["Linux", "Packages"]

---

Setup materia theme in Linux.

<!--more-->

## Papirus icon theme

### 🔽Installation for PoP OS / Ubuntu

```bash
sudo add-apt-repository -yu ppa:papirus/papirus           # Papirus icon theme
sudo apt install papirus-icon-theme
```

### 🔽Installation for Manjaro / endeavour OS

```bash
sudo pacman -S papirus-icon-theme
```

## Kvantum SVG engine

### 🔽Installation for PoP OS / Ubuntu

```bash
sudo add-apt-repository -yu ppa:papirus/papirus
sudo apt install qt5-style-kvantum qt5ct
```

### 🔽Installation for Manjaro / endeavour OS

```bash
sudo pacman -S kvantum-qt5
```

## Materia theme

Looks good on both KDE and Gnome.

- [@MateriaKDE](https://github.com/PapirusDevelopmentTeam/materia-kde)
- [@Materia](https://github.com/nana-4/materia-theme)

### 🔽Installation for PoP OS / Ubuntu

```bash
sudo add-apt-repository -yu ppa:papirus/papirus
sudo apt install materia-gtk-theme materia-kde
```

### 🔽Installation for Manjaro / endeavour OS

```bash
sudo pacman -S materia-gtk-theme materia-kde kvantum-theme-materia
```

## Font setup for Materia theme

From the [README](https://github.com/nana-4/materia-theme#font):

- To properly display the theme, use a font family including Medium weight (e.g. `Roboto` or M+).
- Set the font size to 9.75 (= 13px at 96dpi) or 10.5 (= 14px at 96dpi).
