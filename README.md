# Unbox-EMC

Unbox-EMC is an opinionated Emacs distribution, meant to provide a nice out-of-the-box experience, keeping the end-user setup minimal while still having the bells and whistles of most Emacs configs.

## Prerequisites:
- Emacs 30.1 or later. A GUI version of Emacs is strongly recommended
- The Git version control system. Git helps with installation/updating, and possibly other stuff. I’m not sure if it’s a hard requirement, but I would recommend it regardless

## Installation (Linux):
First ensure that there isn't already a `~/config/emacs/` and/or `~/.emacs.d/` folder, and/or `~/.emacs` file present, as it might override this config.

After which, you can run this is your shell:
```
git clone https://github.com/Cyncrovee/Unbox-EMC.git ~/.config/emacs
```

## Configuration:
If you want to keep things simple, the user.el file (accesed by the `<leader> ffe` keymap) allows for easy configuration of Unbox-EMC. If you want, you can also view the full config with `<leader> ffc`, however be warned this may create major merge conflicts with the remote repository.

## QnA
### Is Unbox-EMC right for me?
If you're looking for a solid, well supported Emacs distro with a good community behind it to daily drive- then Unbox is probably not for you at the moment. For that, you may want to consider something like [DOOM Emacs](https://github.com/doomemacs/doomemacs) or another distro.

If you want to just take a look at what Unbox has to offer, and/or help with the development (making issues, pull requests, testing, etc) then you might want to stick around.

Either way, the decicion if yours to make.
### Can I contribute to Unbox-EMC?
Yes! I am happy to accept contributions, be it issues, feature requests, pull requests, etc. However there is limitation in that I do not accept any generative AI made contributions.
### Does Unbox-EMC support X Language?
Unbox currently has support for the following:
- Rust (via rust-mode and eglot)
- Common Lisp (via Sly, though you will probably want to set your `inferior-lisp-program` as well)
- Python (via python-mode and eglot)
- Lua (via lua-mode)
- Zig (via zig-mode and eglot)
- Elm (via elm-mode and eglot)

However, do keep in mind that Emacs OOTB does support more languages not in this list (for example HTML/CSS), so you can use more languages than just the ones listed. The languages above are there because they have an Unbox-EMC specific configuration.
