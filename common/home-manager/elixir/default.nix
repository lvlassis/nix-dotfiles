{ pkgs, ... }:

{
  home.packages = with pkgs; [ 
    beamMinimal27Packages.elixir_1_17
  ];
}
