{ config, pkgs, ... }:

{
  xdg = {
    portal = {
      enable = true;
      extraPortals = with pkgs; [
        xdg-desktop-portal-termfilechooser
        xdg-desktop-portal-gtk
      ];
      config.common = {
        "org.freedesktop.impl.portal.FileChooser" = "termfilechooser";
      };
    };
  };
}

