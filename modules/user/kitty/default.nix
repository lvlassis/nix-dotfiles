{ config, pkgs, ... }:

{
  options = {
    enable = mkOption {
      type = types.bool;
      default = false;
      description = "Enable the kitty terminal emulator.";
    };
  };

  config = { 
    programs.kitty = {
      enable = true;
      font.name = "VictorMono Nerd Font";
      themeFile = "Monokai";
      settings = {
        background = "#0d0f18";
        background_opacity = "0.75";

        confirm_os_window_close = 0;
        enable_audio_bell = false;
        remember_window_size = false;
      };
    };
  };
}
