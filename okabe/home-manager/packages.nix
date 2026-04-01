{ pkgs, outputs, inputs, system, ... }:
{
  home.packages = with pkgs; [
    foliate
    tesseract
    ocrmypdf
    # kicad
    se_expediente
    horario_ponto
    cura-appimage
    freecad-wayland
  ];
}
