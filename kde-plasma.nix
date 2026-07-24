{ config, pkgs, ... }:

{
  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };

  services.desktopManager.plasma6.enable = true;

  environment.plasma6.excludePackages = with pkgs; [
    kdePackages.kate
    kdePackages.discover
    kdePackages.qrca
  ];


  environment.systemPackages = with pkgs; [
    wl-clipboard
    wayland-utils # Wayland utilities
  ];
}
