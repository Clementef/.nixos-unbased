{ config, pkgs, ... }:

{
  # Enable the Sway window manager
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true; # Required for GTK applications to look right
    extraPackages = with pkgs; [
      swaylock
      swayidle
      foot
      fuzzel     # Application launcher
      waybar     # Status bar
      mako       # Notification daemon
    ];
  };

  # Enable Wayland display manager support (or use greetd / SDDM)
  services.xserver.enable = false; # Optional: disable X11 completely
  
  # Enable Polkit for privilege elevation popups (GUI sudo)
  security.polkit.enable = true;
}