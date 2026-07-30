

{ config, pkgs, ... }:

{
  home.username = "sway";
  home.homeDirectory = "/home/sway";
  home.stateVersion = "26.05"; # Use your NixOS release version

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    mullvad-browser
    librewolf
    qbittorrent
    veracrypt
    vlc # Cross-platform media player and streaming server
    wayland-utils # Wayland utilities
    keepassxc
    neovim
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };

  programs.git = {
    enable = true;
    userName = "clementef";
    userEmail = "clem@example.com";
  };



}
