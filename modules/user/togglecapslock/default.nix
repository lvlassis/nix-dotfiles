{ pkgs, ... }:
{
  home.packages = with pkgs; [
    togglecapslock
  ];
}
