{ pkgs, ... }:
{
  home.packages = with pkgs; [
    bambu-studio
    blender
    freecad-wayland
  ];
}
