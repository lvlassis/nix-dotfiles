{ pkgs, outputs, ... }:
{
  home.packages = with pkgs; [
    unstable.quickshell
    foliate
    openfortivpn
    tesseract
    ocrmypdf
    kicad
    se_expediente
    horario_ponto
    cura-appimage
    freecad-wayland
  ];
}
