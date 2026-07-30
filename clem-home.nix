{ config, pkgs, ... }:

{
  home.username = "clem";
  home.homeDirectory = "/home/clem";
  home.stateVersion = "26.05"; # Use your NixOS release version

  programs.home-manager.enable = true;

  # You can add user packages here later:
  # home.packages = with pkgs; [ htop git ];
}
