{ config, pkgs, ... }:

{
  imports = [
    ./appearance.nix
    ./bindings.nix
    ./env_vars.nix
    ./monitors.nix
    ./plugins.nix
    ./window_rules.nix
    ./workspaces.nix
  ];

  wayland.windowManager.hyprland.settings = {
    "$keyboard" = "royuan-rt100-wired";
  };
}
