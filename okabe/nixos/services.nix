{ ... }:

{
  services = {

    syncthing = {
      enable = true;
      user = "okabe";
      dataDir = "/home/okabe/Syncthing";
      configDir = "/home/okabe/.config/syncthing";

      # Abrir firewall
      openDefaultPorts = true;
    };

    upower = {
      enable = true;
      percentageLow = 20;
      percentageCritical = 5;
    };

    power-profiles-daemon.enable = true;
  };
}
