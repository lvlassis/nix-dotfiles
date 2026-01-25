{ ... }:

{
  programs.caelestia.settings = {
    background = {
      desktopClock.enabled = true;
    };

    bar = {
      status = {
        showBattery = true;
      };
      workspaces = {
        label = "";
        occupiedLabel = "";
        activeLabel = "";
        showWindows = false;
      };
    };

    launcher = {
      actionPrefix = ":";
      vimKeybinds = true;
    };

    session = {
      vimKeybinds = true;
      commands = {
        logout = ["loginctl" "terminate-user" ""];
        shutdown = ["systemctl" "poweroff"];
        hibernate = ["systemctl" "suspend"];
        reboot = ["systemctl" "reboot"];
      };
    };

    paths.wallpaperDir = "~/Imagens/Wallpapers";
  };
}
