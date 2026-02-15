{ nixpkgs-unstable, lib, ... }:

{
  home.file.".config/zathura".source = ./config;

  programs.zathura = {
    enable = true;
    package = nixpkgs-unstable.zathura;
  };
}
