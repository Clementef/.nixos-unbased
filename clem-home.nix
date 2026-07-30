{ config, pkgs, ... }:

{
  home.username = "clem";
  home.homeDirectory = "/home/clem";
  home.stateVersion = "26.05"; # Use your NixOS release version

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    obsidian
    anki
    mullvad-browser
    discord
    bitwarden-desktop
    libreoffice-qt
    hunspell
    hunspellDicts.en_US
    alacritty
    rofi
    qbittorrent
    veracrypt
    R
    python315
    # emulators
    mgba
    fceux
    # music
    yt-dlp
    audacity
    kdePackages.elisa
    # KDE
    kdePackages.kclock # Clock app
    kdePackages.kcolorchooser # A small utility to select a color
    kdePackages.ksystemlog # KDE SystemLog Application
    vlc # Cross-platform media player and streaming server
    keepassxc
    bolt-launcher
    runelite
    neovim
    lazygit
    ripgrep
    fd
    gnumake
    libgcc
    go
    lm_sensors
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
