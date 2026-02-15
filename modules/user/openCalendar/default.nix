{ pkgs, ... }:
{
  home.packages = with pkgs; [
    openCalendar
  ];
}
