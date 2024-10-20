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
* **Processor** - Intel Celeron G4930
* **Graphics** - MSI GeForce GTX 1050 Ti GAMING
* **Memory** - 1x8 GB GoodRam DDR4
* **Hard drive (SSD)** - Crucial BX500
* **Hard drive (HDD)** - Toshiba MQ01ABD100
* **Hard drive (HDD)** - Seagate ST500LM021-1KJ152
* **Display** - DELL E2214H
* **Display** - Samsung S24D300
* **Display** - LG Flatron L1753TR
* **Keyboard** - Magegee 60% (red switches)
* **Mouse** - GX Trust
* **Tablet** - Wacom Bamboo MTE-450A
* **Operating system** - Arch Linux
* **Kernel** - Linux 6.11.2-arch1-1
