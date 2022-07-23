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
  home.packages = with pkgs; [ fd htop nixfmt ripgrep tldr tree ];

  # Programs and configurations to be installed
  imports = [
    ./configs/alacritty.nix
    ./configs/bash.nix
    ./configs/fzf.nix
    ./configs/git.nix
    ./configs/starship.nix
    ./configs/tmux.nix
    ./configs/vscodium.nix
  ];
}
