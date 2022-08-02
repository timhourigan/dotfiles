{ ... }:

{
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    # https://starship.rs/config/
    settings = {
      add_newline = false;

      battery = {
        disabled = false;
        format = "[$symbol$percentage]($style) ";
        full_symbol = "🔋";
        charging_symbol = "🔌";
        discharging_symbol = "⚡";
      };
      battery.display = [{ threshold = 20; }];

      memory_usage = {
        disabled = false;
        threshold = -1;
        symbol = " ";
        style = "bold dimmed green";
        format = "[$ram]($style) ";
      };

      time = {
        disabled = false;
        format = "[$time]($style) ";
        time_format = "%R";
      };

      git_status = {
        modified = "[📝\($count\)](blue)";
        staged = "[✚\($count\)](green)";
        untracked = "[?\($count\)](yellow)";
      };
    };
  };
}
