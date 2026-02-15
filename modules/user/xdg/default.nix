{ config, pkgs, ... }:

let
  browser = "userapp-Zen-HINHD3.desktop";
in
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
  xdg.mimeApps.enable = true;
  xdg.mimeApps.defaultApplications = {
    "text/plain" = [ "neovide.desktop" ];
    "text/html" = browser;
    "application/pdf" = [ "org.pwmt.zathura.desktop" ];
    "image/*" = [ "eog.desktop" ];
    "video/*" = [ "mpv.desktop" ];
    "x-scheme-handler/mailto" = browser;
    "x-scheme-handler/http" = browser;
    "x-scheme-handler/https" = browser;
    "x-scheme-handler/about" = browser;
    "x-scheme-handler/unknown" = browser;
  };
}

