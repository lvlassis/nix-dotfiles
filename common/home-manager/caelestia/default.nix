{ pkgs, ... }:

{
  imports = [
    ./settings.nix
  ];

  home.packages = with pkgs; [
    quickshell
  ];

  programs.caelestia = {
    enable = true;
    systemd = {
      enable = true;
      target = "graphical-session.target";
      environment = [];
    };
    cli = {
      enable = true; # Also add caelestia-cli to path
      settings = {
        theme.enableGtk = false;
      };
    };
  };
}
