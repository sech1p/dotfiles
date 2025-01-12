<p align="center">

# 🖥️ sech1p's dotfiles

Dotfiles of my setups

![Screenshot of 'moon' - computer with Arch](screenshot.png)

</p>

## ⚠️ Notice

File `.zshrc` references to my `$HOME` directory (as absolute paths). Before you starting using my dotfiles, change all reference of my username (sech1p) to name of your username in your environment.

I plan to change this absolute paths as soon as possible. Sorry for inconveniences!

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

* **Web browser** - [Firefox Developer Edition](https://www.mozilla.org/en/firefox/developer)
* **Graphics editor¹** - [Photoshop CC 2017](https://www.adobe.com/en/products/photoshop.html)/[Aseprite](https://www.aseprite.org)
* **DAW²** - [Ableton Live 9](https://www.ableton.com/en)/[Bitwig Studio](https://www.bitwig.com)
* **Gaming³** - [Steam](https://steampowered.com)/[Heroic Games Launcher](https://heroicgameslauncher.com)/[An Anime Games Launcher](https://aagl.launcher.moe)

¹ I use Photoshop CC 2017 because it's latest installable version on Linux

² Ableton Live 9 due to using 32-bit plugin which won't work in newest Ableton's

³ Heroic Games Launcher for GOG/Epic games, and An Anime Games Launcher for Genshin Impact

## 📦 Additional content

My dotfiles (state as of beginning of January 2025) use some toolchains, primary for developing homebrews for Sony (PSP and PS2) and Nintendo (devkitPro) consoles.

To use all of them, you must have [pspdev](https://github.com/pspdev/pspdev) (PSP toolchain), [ps2dev](https://github.com/ps2dev/ps2dev) (PS2 toolchain), devkitPro (Toolchain for various Nintendo consoles) and [marsdev](https://github.com/andwn/marsdev) (Toolchain for SEGA Mega Drive/Genesis) installed.

While devkitPro provides prebuilt binaries, which you can install by [following these steps](https://devkitpro.org/wiki/Getting_Started), you must manual build PlayStation's and SEGA toolchains.

Clone `pspdev` and `ps2dev` repositories from links provided above to your home directory, and type command `./build-all.sh` in your terminal for both of them. Then clone `marsdev`, and type below commands in it directory:

```bash
$ export MARS_BUILD_DIR="(repository_directory)/mars" # Where (repository_directory) you replace by marsdev repository directory
$ export MARS_INSTALL_DIR="/opt/toolchains/mars"
$ make m68k-toolchain
$ make sgdk
$ make sik-tools
$ make flamewing-tools
$ sudo make install
```

That's it!

To be precious, additionally I installed extra packages from these Sony's toolchains by entering `./build-extra.sh` command in their directory after building all. It provides some additional tools.

Why I need many toolchains? I don't know. I just wanted to make some experiments with my own homebrews. Actually I have plans to release homebrew for PSP. For rest consoles (like PS2, GBA, Wii) I will do some homebrews in nearly future, as I have some ideas in my brain.

Because I will have real SEGA Mega Drive (not clone nor box with emulator) so I have plan to do something for it too!

## 💻 Scripts

All my scripts (which sometimes helps me on my daily work) with their proper description and usage of them, are located in [.local/bin](.local/bin/) directory.

## 🖥️ Specification

* **Motherboard** - [ASRock H310CM-DVS](https://www.asrock.com/mb/Intel/H310CM-DVS/index.asp)
* **Processor** - [Intel Celeron G4930](https://www.intel.com/content/www/us/en/products/sku/134878/intel-celeron-processor-g4930-2m-cache-3-20-ghz/specifications.html) (3.20 GHz)
* **Graphics** - [MSI GeForce GTX 1050 Ti GAMING](https://www.msi.com/Graphics-Card/GeForce-GTX-1050-Ti-GAMING-X-4G/support) (4 GB)
* **Graphics driver**: [NVidia](https://www.nvidia.com) [565.77](https://www.nvidia.com/en-us/drivers/details/237587/) (proprietary)
* **Memory** - 1x[8 GB GoodRam](https://www.x-kom.pl/p/419244-pamiec-ram-ddr4-goodram-8gb-1x8gb-2666mhz-cl19.html) DDR4
* **Hard drive (SSD)** - [Crucial BX500](https://www.crucial.com/ssd/bx500/ct240bx500ssd1) (240 GB)
* **Hard drive (HDD)** - [Toshiba MQ01ABD100](https://storage.toshiba.com/internal-specialty-hdd/pc/mq01abd-series) (1 TB)
* **Hard drive (HDD)** - [Seagate ST500LM021-1KJ152](https://www.amazon.com/Seagate-ST500LM021-Laptop-500GB-2-5-Inch/dp/B00II56U0I) (500 GB)
* **Display** - [DELL E2214H](https://www.dell.com/support/home/pl-pl/product-support/product/dell-e2214h/docs) (1920x1080@60, 21.5 inches)
* **Display** - [Samsung S24D300](https://www.ebay.com/sch/i.html?_nkw=samsung+s24d300) (1920x1080@60, 24 inches)
* **Display** - [LG Flatron L1753TR](https://www.ebay.com/sch/i.html?_nkw=lg+flatron+1280x1024) (1280x1024@60, 17 inches)
* **Keyboard** - [Epson Q203A](https://deskthority.net/wiki/Epson_Q203A) (Fujitsu Peerless Type 2 switches)
* **Mouse** - [GX Trust](https://www.trust.com/en/product/25037-gxt-110-felox-wireless-gaming-mouse-black)
* **Tablet** - [Wacom Bamboo MTE-450A](https://www.newegg.com/wacom-mte450/p/N82E16823100045) (area: 5.8" x 3.7")
* **Operating system** - [Arch Linux](https://archlinux.org/)
* **Kernel** - [Linux](https://www.kernel.org) [6.12.4](https://cdn.kernel.org/pub/linux/kernel/v6.x/ChangeLog-6.12.4)-arch1-1
* **Desktop environment** - [KDE](https://kde.org) [6.2](https://kde.org/announcements/plasma/6/6.2.0) ([X11](https://www.x.org))

## ❓ FAQ

* You have three monitors, are you okay with multiple screens with the GTX 1050 Ti and NVidia's proprietary drivers?

Yes, it's working decent. Sometimes I got minor bugs but they are not annoying much.

* Is KDE 6 still buggy?

Last time it's less buggy than earlier. KDE developers fixed many issues, it's pretty usable.

BTW: KDE 6 is (as of January 2025) fresh and only a few months old.

* Are you planning to distrohopping/change desktop environment?

Not for now, I feel good with Arch right now.

For now I'm giving KDE 6 a chance as it's a fresh version of KDE, when I use Linux a bit more I'm thinking about changing the environment to [Hyprland](https://hyprland.org).
