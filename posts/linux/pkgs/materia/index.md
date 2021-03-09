# Materia and Papirus Themes


Setup materia theme in Linux.

<!--more-->

## Papirus icon theme

Along with Kvantum SVG engine for QT apps.

### Install via apt

```bash
sudo add-apt-repository -yu ppa:papirus/papirus           # Papirus icon theme
sudo apt install papirus-icon-theme qt5-style-kvantum qt5ct
```

<!-- endtab -->

### Install via pacman

```bash
sudo pacman -S papirus-icon-theme kvantum-qt5
```

## Materia theme

Looks good on both KDE and Gnome.

- [@MateriaKDE](https://github.com/PapirusDevelopmentTeam/materia-kde)
- [@Materia](https://github.com/nana-4/materia-theme)

### Install via apt

```bash
sudo add-apt-repository -yu ppa:papirus/papirus
sudo apt install materia-gtk-theme materia-kde
```

### Install via pacman

```bash
sudo pacman -S materia-gtk-theme materia-kde kvantum-theme-materia
```

### Font setup

From the Materia theme [README](https://github.com/nana-4/materia-theme#font):

- To properly display the theme, use a font family including Medium weight (e.g. `Roboto` or M+).
- Set the font size to 9.75 (= 13px at 96dpi) or 10.5 (= 14px at 96dpi).

