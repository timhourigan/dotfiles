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
    bat
    chromium
    exa
    fd
    htop
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
    libreoffice
    nixfmt
    ripgrep
    powerline-fonts
    tldr
    tree

    # Node
    nodejs

    # Python
    (python310.withPackages (ps: with ps; [ black flake8 pip ]))
  ];

  # Programs and configurations to be installed
  imports = [
    ./configs/alacritty.nix
    ./configs/bash.nix
    ./configs/fzf.nix
    ./configs/git.nix
    ./configs/neovim.nix
    ./configs/starship.nix
    ./configs/tmux.nix
    ./configs/vscodium.nix
  ];
}
