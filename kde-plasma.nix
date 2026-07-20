{ config, pkgs, ... }:

{
  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };

  services.desktopManager.plasma6.enable = true;

  # Enable the X11 windowing system.
  # You can disable this if you're only using the Wayland session.
  services.xserver.enable = false;

  environment.plasma6.excludePackages = with pkgs; [
    kdePackages.kate
    kdePackages.elisa
    kdePackages.discover
    kdePackages.qrca
  ];
}
