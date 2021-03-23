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
# ~/.git_aliases -> .dotfiles/git/.git_aliases
# ~/.gitconfig -> .dotfiles/git/.gitconfig
# ~/.git_credentials -> .dotfiles/git/.git_credentials

# Remove a configuration e.g. git
$ stow -D git
```

## Configurations

| Name     | Notes                                                                          |
|:---------|:-------------------------------------------------------------------------------|
| `bashrc` | bash shell configuration                                                       |
| `git`    | git configuration - Requires `email` and `name` to be customised, as necessary |
| `vim`    | vim editor configuration - Additional points neovim to ~/.vimrc                |

## Useful References

* [Managing dotfiles with GNU stow](https://alexpearce.me/2016/02/managing-dotfiles-with-stow/)
