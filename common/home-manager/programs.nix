{ pkgs, ... }:

{
  programs = {

      rofi = {
        enable = true;
        plugins = [pkgs.rofi-emoji];
      };
      
      caelestia = {
        enable = true;
        # theme = "catppuccin-mocha";
      };
  };
}
