{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    (python.withPackages (ps: with ps; [ 
      numpy 
      scipy 
      matplotlib
      pandas
      openpyxl
    ]))
  ];
}

