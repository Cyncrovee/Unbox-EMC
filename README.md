# Unbox-EMC

Unbox-EMC is an opinionated Emacs distribution, meant to provide a nice out-of-the-box experience, keeping the end-user setup minimal while still having the bells and whistles of most Emacs configs.

## Installation (Linux):
First ensure that there isn't already a `~/config/emacs/` and/or `~/.emacs.d/` folder, and/or `~/.emacs` file present, as it might override this config.

After which, you can run this is your shell:
```
git clone https://github.com/Cyncrovee/Unbox-EMC.git ~/.config/emacs
```

## Configuration:
If you want to keep things simple, the user.el file (accesed by the "(leader) ffe" keymap) allows for easy configuration of Unbox-EMC. If you want, you can also view the full config with "(leader) ffc", however be warned this may create major merge conflicts with the remote repository.
