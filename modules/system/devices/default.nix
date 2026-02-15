{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    simple-mtpfs
    jmtpfs
    gvfs
  ];

  services.udev.packages = [ pkgs.libmtp ];
}
