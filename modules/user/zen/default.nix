{ pkgs, ... }:

let
  zen-wrapper = import ../../misc/wrappers/zen.nix { inherit pkgs inputs system; };
in
{
  home.packages = with pkgs; [
    zen-wrapper
  ];
}
