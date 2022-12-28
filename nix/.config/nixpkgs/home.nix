{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;

  # Home Manager release
  home.stateVersion = "22.05";

  # User info
  home.username = "timh";
  home.homeDirectory = "/home/timh";

  # Allow fontconfig to discover installed fonts and configurations
  fonts.fontconfig.enable = true;

  # Packages to be installed
  home.packages = with pkgs; [
    # Utils
    bat
    du-dust
    exa
    fd
    feh
    htop
    jq
    neofetch
    nixfmt
    nmap
    ripgrep
    taskwarrior
    tig
    tldr
    tree

    # Apps
    filezilla
    gimp
    libreoffice

    # Browsers
    chromium

    # Fonts
    (nerdfonts.override {
      fonts = [
        "DejaVuSansMono"
        "DroidSansMono"
        "FiraCode"
        "Hack"
        "JetBrainsMono"
        "LiberationMono"
        "Terminus"
      ];
    })
    twitter-color-emoji
    noto-fonts-emoji
    powerline-fonts

    # Node
    nodejs

    # Python
    (python310.withPackages (ps: with ps; [ black flake8 pip ]))
  ];

  # Programs and configurations to be installed
  imports = [
    ./configs/alacritty.nix
    ./configs/autojump.nix
    ./configs/bash.nix
    ./configs/direnv.nix
    ./configs/fzf.nix
    ./configs/gh.nix
    ./configs/git.nix
    ./configs/neovim.nix
    ./configs/rofi.nix
    ./configs/starship.nix
    ./configs/tmux.nix
    ./configs/vscodium.nix
    # ./configs/zsh.nix
  ];
}
