{ pkgs, ... }:
{ 
  home.packages = with pkgs; [
    cruise
  ];
}
