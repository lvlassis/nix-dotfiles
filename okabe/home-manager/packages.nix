{ pkgs, outputs, inputs, system, ... }:
{
  home.packages = with pkgs; [
    # inputs.caelestia-shell.packages.${system}.with-cli  # Temporariamente comentado devido ao erro xkeyboard-config
    unstable.quickshell
    foliate
    openfortivpn
    tesseract
    ocrmypdf
    # kicad
    se_expediente
    horario_ponto
    cura-appimage
    freecad-wayland
  ];
}
