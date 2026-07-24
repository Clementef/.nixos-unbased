{ config, pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    wl-clipboard # Copy/Paste functionality.
    mako # Notification utility.
  ];

  # Enables Gnome Keyring to store secrets for applications. 
  services.gnome.gnome-keyring.enable = true;

  # Enable Sway.
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
  };

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --time --cmd sway";
        user = "clem";
      };
    };
  };

  security.pam.services = {
    greetd.enableGnomeKeyring = true;
    swaylock.enableGnomeKeyring = true;
  
    # If using a display manager such as GDM
    #gdm.enableGnomeKeyring = true;
  };
}
