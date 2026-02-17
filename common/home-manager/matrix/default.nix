{ pkgs, ... }:
{
  home.packages = with pkgs; [
    iamb
  ];

  home.file.".config/iamb/config.toml".source = ./config.toml;
}
