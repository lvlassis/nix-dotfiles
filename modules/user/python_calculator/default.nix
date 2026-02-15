{ pkgs, ... }:
{
  home.packages = with pkgs; [
    python_calculator
  ];
}
