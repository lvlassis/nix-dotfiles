{ pkgs, ... }:

{
  services = {
    qbittorrent = {
      enable = true;
      webuiPort = null;
    };
  };
}
