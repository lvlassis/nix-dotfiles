{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Lucas Vinícius";
        email = "lvlassis.2@gmail.com";
      };
    };
  };
}
