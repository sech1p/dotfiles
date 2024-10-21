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
* **find(1)** - [fd](https://github.com/sharkdp/fd)
* **dig(1)** - [doggo](https://github.com/mr-karan/doggo)
* **Text Editor** - [Kakoune](https://kakoune.org)
* **Process Viewer** - [btop](https://github.com/aristocratos/btop)
* **System Fetch** - [catnap](https://catnap-fetch.xyz)

## 🖥️ Specification

* **Motherboard** - [ASRock H310CM-DVS](https://www.asrock.com/mb/Intel/H310CM-DVS/index.asp)
* **Processor** - [Intel Celeron G4930](https://www.intel.com/content/www/us/en/products/sku/134878/intel-celeron-processor-g4930-2m-cache-3-20-ghz/specifications.html) (3.20 GHz)
* **Graphics** - [MSI GeForce GTX 1050 Ti GAMING](https://www.msi.com/Graphics-Card/GeForce-GTX-1050-Ti-GAMING-X-4G/support) (4 GB)
* **Graphics driver**: [NVidia](https://www.nvidia.com) [560.35.03](https://www.nvidia.com/en-us/drivers/details/230918/) (proprietary)
* **Memory** - 1x[8 GB GoodRam](https://www.x-kom.pl/p/419244-pamiec-ram-ddr4-goodram-8gb-1x8gb-2666mhz-cl19.html) DDR4
* **Hard drive (SSD)** - [Crucial BX500](https://www.crucial.com/ssd/bx500/ct240bx500ssd1) (240 GB)
* **Hard drive (HDD)** - [Toshiba MQ01ABD100](https://storage.toshiba.com/internal-specialty-hdd/pc/mq01abd-series) (1 TB)
* **Hard drive (HDD)** - [Seagate ST500LM021-1KJ152](https://www.amazon.com/Seagate-ST500LM021-Laptop-500GB-2-5-Inch/dp/B00II56U0I) (500 GB)
* **Display** - [DELL E2214H](https://www.dell.com/support/home/pl-pl/product-support/product/dell-e2214h/docs) (1920x1080@60, 21.5 inches)
* **Display** - [Samsung S24D300](https://www.ebay.com/sch/i.html?_nkw=samsung+s24d300) (1920x1080@60, 24 inches)
* **Display** - [LG Flatron L1753TR](https://www.ebay.com/sch/i.html?_nkw=lg+flatron+1280x1024) (1280x1024@60, 17 inches)
* **Keyboard** - [Magegee 60%](https://www.amazon.com/dp/B09KLGRBCH) (red switches)
* **Mouse** - [GX Trust](https://www.trust.com/en/product/25037-gxt-110-felox-wireless-gaming-mouse-black)
* **Tablet** - [Wacom Bamboo MTE-450A](https://www.newegg.com/wacom-mte450/p/N82E16823100045) (area: 5.8" x 3.7")
* **Operating system** - [Arch Linux](https://archlinux.org/)
* **Kernel** - [Linux](https://www.kernel.org) [6.11.2](https://cdn.kernel.org/pub/linux/kernel/v6.x/ChangeLog-6.11.2)-arch1-1
* **Desktop environment** - [KDE](https://kde.org) [6.2](https://kde.org/announcements/plasma/6/6.2.0) ([X11](https://www.x.org))

## ❓ FAQ

* You have three monitors, are you okay with multiple screens with the GTX 1050 Ti and NVidia's proprietary drivers?

Umm, sometimes there is a bug related to the desktop on the middle monitor (Samsung S24D300) having a black square on the middle.

My temporary workaround is to disconnect the HDMI cable from the graphics card for a moment, wait a moment until the desktop with bars moves to the left monitor, then connect the HDMI cable back to the graphics card.

After that, the desktop returns to normal.
