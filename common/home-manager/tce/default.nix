{ pkgs, outputs, inputs, system, ... }:
{
  home.packages = with pkgs; [
    openfortivpn
    glab
  ];

  programs.zsh.shellAliases = {
      "vpntce" = "sudo openfortivpn vpn.tce.go.gov.br:443 -u lvinicius";
  };
}
