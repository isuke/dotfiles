# chezmoi dotfiles

## Brew Install

```sh
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Init

```sh
$ brew install chezmoi
$ chezmoi init https://github.com/isuke/dotfiles
$ brew bundle --global
```

## Update and Apply

```sh
$ chezmoi update --apply
$ brew bundle --global
```
