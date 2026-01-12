{ config, ... }:

{
  wayland.windowManager.hyprland = {
    settings = {
      general = with config.colorScheme.palette; {
        "col.active_border" = "rgb(${base0D})";
        "col.inactive_border" = "rgb(${base03})";
      };
    };
  };
}
