# Installation

## Prepare

Clone sources to `$HOME` directory.

```sh
git clone https://github.com/allophane/dotfiles
```

Later steps will require [GNU Stow][https://www.gnu.org/software/stow/]

## Install

To install selected dotfiles e.g. for *vim*, run

```sh
stow -S vim
```

The following command will install everything

```sh
make install
```

## Uninstall

Uninstall everything with

```sh
make uninstall
```
