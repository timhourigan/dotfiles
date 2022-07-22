{ config, pkgs, ... }:

{

  # Let Home Manager install and manage itself
  programs.home-manager.enable = true;

  # Home Manager release
  home.stateVersion = "22.05";


  # User info
  home.username = "timh";
  home.homeDirectory = "/home/timh";

  # Packages to be installed
  home.packages = with pkgs; [ fortune htop nixfmt ];

  # Programs and configurations to be installed
  imports = [
    ./alacritty.nix
    ./bash.nix
    ./fzf.nix
    ./git.nix
    ./starship.nix
    ./tmux.nix
    ./vscodium.nix
  ];
} 