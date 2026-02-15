{ pkgs, ... }:
{
  home.packages = with pkgs; [
    babel
  ];
}
