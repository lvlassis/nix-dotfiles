{ ... }:

{
  environment.sessionVariables = {
    # XDG e Desktop
    XDG_CURRENT_DESKTOP = "Hyprland";
    XDG_SESSION_TYPE = "wayland";
    XDG_SESSION_DESKTOP = "Hyprland";
    
    # Qt
    QT_AUTO_SCREEN_SCALE_FACTOR = "1";
    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
    # QT_QPA_PLATFORMTHEME = "qt5ct";
    QT_QPA_PLATFORM = "wayland";
    
    # GTK e outros toolkits
    GTK_USE_PORTAL = "1";          # força o uso de XDG portals
    GDK_BACKEND = "wayland,x11";
    
    # Drivers e backends
    SDL_VIDEODRIVER = "wayland";
    CLUTTER_BACKEND = "wayland";
    WLR_RENDERER = "vulkan";
    
    # Cursor e editores
    XCURSOR_SIZE = "16";
    EDITOR = "nvim";
    VISUAL = "nvim";
    TERMCMD = "kitty";             # ou "wezterm start --always-new-process", "foot", etc.
  };
}
