{ ... }:

{
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    # https://starship.rs/config/
    settings = {
      add_newline = false;
      time = {
        disabled = false;
        format = "[$time]($style) ";
        time_format = "%R";
      };

      memory_usage = {
        disabled = false;
        threshold = -1;
        symbol = " ";
        style = "bold dimmed green";
        format = "[$ram]($style) ";
      };

    };
  };
}
