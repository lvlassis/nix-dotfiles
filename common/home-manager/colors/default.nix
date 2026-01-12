{ inputs, ... }:

{
  colorscheme = inputs.nix-colors.colorschemes.ayu-dark;

  imports = [
    ./hyprland.nix
    # ./kitty.nix
  ];
}
