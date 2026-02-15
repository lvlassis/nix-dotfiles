{ config, pkgs, lib, ... }:

{
  wayland.windowManager.hyprland.settings = {

    animation = [
      "workspaces, 1, 3, default, slidefade 10%"
    ];
    
  };
}
