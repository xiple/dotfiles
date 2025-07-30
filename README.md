# My dotfiles collection

## Installation steps

1. Backup **your** dotfiles
2. Clone this repository in your home directory
3. Install `stow` package using your favorite package manager
4. Install dotfiles

```sh
cd ~/dotfiles
stow --adopt .
git restore .
```

## Local configuration

Private ssh configurations are loaded from `~/.ssh/config.d`. For git private configuration, create a `.gitconfig.local` in your home directory.
