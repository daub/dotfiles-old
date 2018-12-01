# Installation

## Prepare

Clone sources to `$HOME` directory.

```sh
git clone https://github.com/allophane/dotfiles
```

Later steps will require [GNU Stow](https://www.gnu.org/software/stow/)

## Install

Install selected dotfiles e.g. *vim*

```sh
stow -S vim
```

The following command will install everything

```sh
make install
```

## Uninstall

Uninstall selected dotfiles

```sh
stow -D vim
```

Uninstall everything

```sh
make uninstall
```
