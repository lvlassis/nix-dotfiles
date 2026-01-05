{ ... }:

{
  # Adiciona rotação de tela
  hardware.sensor.iio.enable = true;

  # Pacote de rotação de tela
  environment.systemPackages = with pkgs; [
    rot8
  ];
}
