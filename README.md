<p align="center">

# 🖥️ sech1p's dotfiles

Dotfiles of my setups

![Screenshot of 'moon' - computer with Arch](screenshot.png)

</p>

## 💾 Installation

Before using my dotfiles maybe you want to use `bootstrap.sh` file to pre-install some stuff

Go to your terminal and type

```sh
$ ./bootstrap.sh
```

After bootstraping copy all dotfiles to your `$HOME` folder

Additionally, if you have dotfiles repository, and you want make your life easier, type:

```sh
$ ./bootstrap.sh dotfiles_update_monitor
```

This command will install script and service in your distribution which detects updates of dotfiles in your `$HOME` directory,
and then copies them to `$HOME/Development/dotfiles` directory which is folder with dotfiles repository.

You no more need to manually copy dotfiles to repository on update. (repository separately from `$HOME` directory is safer method to store dotfiles)

## 📦 Used programs

* **cat(1)** - [bat](https://github.com/sharkdp/bat)
* **ls(1)** - [eza](https://eza.rocks)
* **Text Editor** - [Kakoune](https://kakoune.org)
* **Process Viewer** - [btop](https://github.com/aristocratos/btop)
* **System Fetch** - [catnap](https://catnap-fetch.xyz)

## 🖥️ Specification

* **Motherboard** - ASRock H310CM-DVS
* **Processor** - Intel Celeron G4930 (3.20 GHz)
* **Graphics** - MSI GeForce GTX 1050 Ti GAMING (4 GB)
* **Memory** - 1x8 GB GoodRam DDR4
* **Hard drive (SSD)** - Crucial BX500 (240 GB)
* **Hard drive (HDD)** - Toshiba MQ01ABD100 (1 TB)
* **Hard drive (HDD)** - Seagate ST500LM021-1KJ152 (500 GB)
* **Display** - DELL E2214H (1920x1080@60, 21.5 inches)
* **Display** - Samsung S24D300 (1920x1080@60, 24 inches)
* **Display** - LG Flatron L1753TR (1280x1024@60, 17 inches)
* **Keyboard** - Magegee 60% (red switches)
* **Mouse** - GX Trust
* **Tablet** - Wacom Bamboo MTE-450A (area: 5.8" x 3.7")
* **Operating system** - Arch Linux
* **Kernel** - Linux 6.11.2-arch1-1
* **Desktop environment** - KDE 6.2
