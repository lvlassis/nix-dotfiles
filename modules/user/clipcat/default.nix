{ lib, ... }:

let
  cfg = config.userSettings.clipcatd;
in
{
  options = {
    userSettings.clipcatd = {
      enable = lib.mkEnableOption "Enable Clipcatd";
    };
  };

  config = lib.mkIf cfh.enable {
    home.file.".config/clipcat".source = ./config;
  };
}
