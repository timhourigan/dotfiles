# dotfiles

## Instructions

```shell
# Install GNU stow, if it isn't present already
$ sudo apt install -y stow # Debian/Ubuntu example

# Clone the directory to ~/.dotfiles
$ git clone https://github.com/timhourigan/dotfiles.git ~/.dotfiles

# Change to the .dotfiles directory
$ cd ~/.dotfiles

# Setup a configuration e.g. git
$ stow git
# This will create aliases of all the files in the "git" folder to home
# ~/.git-aliases -> .dotfiles/git/.git-aliases
# ~/.gitconfig -> .dotfiles/git/.gitconfig
# ~/.git-credentials -> .dotfiles/git/.git-credentials
```

## Configurations

| Name  | Notes                                            |
|:------|:-------------------------------------------------|
| `git` | Requires `email` to be updated in `~/.gitconfig` |


## Useful References

* [Managing dotfiles with GNU stow](https://alexpearce.me/2016/02/managing-dotfiles-with-stow/)
