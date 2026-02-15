{ config, pkgs, ... }:

{
  options = {
    enable = mkOption {
      type = types.bool;
      default = false;
      description = "Enable the alacritty terminal emulator.";
    };
  };

  config = { 
    programs.alacritty.enable = true;
  };
}
