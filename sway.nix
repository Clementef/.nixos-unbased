{ config, pkgs, lib, ... }:
{
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true; # Configures GTK themes and icons properly
  };

  # Enables Gnome Keyring to store secrets for applications. 
  services.gnome.gnome-keyring.enable = true;

  security.pam.services = {
    login.enableGnomeKeyring = true;
  };
  
  # Security & Authentication
  security.polkit.enable = true;
  
  # Desktop Portals
  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-wlr
      pkgs.xdg-desktop-portal-gtk
    ];
    # Fixes slow app startup times by setting a default portal provider
    config.common.default = "*";
  };
}
