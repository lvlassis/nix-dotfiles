{ config, pkgs, ... }:

{
  userSettings = {
    kitty = {
      enable = true;
      font_size = 12;
    };
  };

  imports = [
    ./hyprland/hyprland.nix
    ./hyprpaper.nix
    ./hypridle.nix

    ./legacy/legacy.nix
    ./packages.nix
    ./swaylock.nix
    ./waybar/waybar.nix

    ../../modules/user/kitty
  ];

  # Home Manager needs a bit of information about you and the paths it should manage.
  home = {
    username = "okabe";
    homeDirectory = "/home/okabe";
    stateVersion = "24.11"; # Do not change
  };

}
