{
  programs.zsh = {
    enable = true;
    history = {
      size = -1;
    };
    shellAliases = {
        diff = "diff --color=auto";
        l = "exa --long --group --git --all";
    };

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "robbyrussell";
    };
  };
}
