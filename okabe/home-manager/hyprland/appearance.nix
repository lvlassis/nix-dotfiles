{ config, pkgs, lib, ... }:

{
  wayland.windowManager.hyprland.settings = {

    general = {
      "col.active_border" = lib.mkForce "rgb(82D3E2)";
    };

    animation = [
      "workspaces, 1, 3, default, slidefade 10%"
    ];
    
  };
}
