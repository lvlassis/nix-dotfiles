{ pkgs, ... }:
{
  home.packages = with pkgs; [
    actions
    nix-gc
  ];
}
