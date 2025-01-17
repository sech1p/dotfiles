# 💾 Installation

Before using my dotfiles maybe you want to use `bootstrap.sh` file to pre-install some stuff.

Go to your terminal and type:

```sh
$ ./bootstrap.sh
```

After bootstraping copy all dotfiles to your `$HOME` folder.

Additionally, if you have dotfiles repository, and you want make your life easier, type:

```sh
$ ./bootstrap.sh dotfiles_update_monitor
```

This command will install script and service in your distribution which detects updates of dotfiles in your `$HOME` directory,
and then copies them to `$HOME/Development/dotfiles` directory which is folder with dotfiles repository.

You no more need to manually copy dotfiles to repository on update. (repository separately from `$HOME` directory is safer method to store dotfiles)
