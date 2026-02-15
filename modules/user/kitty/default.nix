{ config, pkgs, lib, ... }:

let
  cfg = config.userSettings.kitty;
in
{
  options = {
    userSettings.kitty = {
      enable = lib.mkEnableOption "Enable kitty";
      font_size = lib.mkOption {
        type = lib.types.int;
        default = 12;
        description = "Font size for kitty terminal emulator";
      };
    };
  };

  config = lib.mkIf cfg.enable{ 
    programs.kitty = {
      enable = true;
      font.name = "VictorMono Nerd Font";
      font.size = lib.mkDefault cfg.font_size;
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
