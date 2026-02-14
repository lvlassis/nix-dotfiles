{ ... }:

{
  programs.caelestia.settings = {
    background = {
      desktopClock.enabled = true;
    };

    # general.idle = {
    #   timeouts = [
    #     { "timeout": 180, "idleAction": "lock" }
    #     { "timeout": 300, "idleAction": "dpms off", "returnAction": "dpms on" }
    #     { "timeout": 600, "idleAction": ["notify-send" "Hibernando"] }
    #   ]
    # };

  };
}
