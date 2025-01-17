# 📦 Additional content

## ⚠️ Notice

If you don't need these additional content provided below, you can just uncommenting their reference from `.zshrc` file.

## 📦 Toolchains

My dotfiles (state as of beginning of January 2025) use some toolchains, primary for developing homebrews for Sony (PSP and PS2), Nintendo (devkitPro) and SEGA (marsdev) consoles.

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

## 📦 Devices configs

My dotfiles contains too configs for my devices.

### 🎮 Racing Wheel

[99-wheel.conf](../etc/X11/xorg.conf.d/99-wheel.conf) is responsible for Xinput support for my racing wheel (Saitek R100).

If you wanna use it with your wheel, just change a name of `Identifier` and `MatchDevicePath`, because your device path may be different on your configuration.

### 🎮 osu! Keypad

[mapping.yaml](../.config/ch57x/mapping.yaml) in `.config/ch57x` is a mapping for my osu keypad based on ch57x chip which I bought from China.

This mapping requires that's you have 3-columns keys and one knob. I use [this keypad](https://aliexpress.com/item/1005006594445739.html).

Otherwise, you can modify mapping whatever you want.

To use mapping for you cheap keypad, you must use tool named [ch57x-keyboard-tool](https://github.com/kriomant/ch57x-keyboard-tool). To program on your keypad mapping from config, type below commands:

```bash
$ ./ch57x-keyboard-tool validate < .config/ch57x/mapping.yaml
$ ./ch57x-keyboard-tool upload < .config/ch57x/mapping.yaml
```

Now, you programmed your keypad, enjoy!

To keep stable position of keypad on your desk, I recommend mount it with double sided tape.

### 📱 Graphics tablet

I have a graphics tablet - Wacom Bamboo (MTE-450A), released in late-2007. It's old, but still rocks!

I use this tablet for drawing graphics and for playing in osu!

To deal with this tablet, I use [OpenTabletDriver](https://opentabletdriver.net). To load settings, open OpenTabletDriver application, press `File` from menu bar and in context menu press `Load settings...`, then select `.config/wacom/tablet.json` file and load it.
