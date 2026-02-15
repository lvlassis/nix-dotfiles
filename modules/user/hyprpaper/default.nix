{ pkgs, ... }:
{
  home.packages = with pkgs; [
    reload_wallpaper
  ];
}
