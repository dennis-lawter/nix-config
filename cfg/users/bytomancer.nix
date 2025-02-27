{ config, pkgs, ... }:
{
  # Support for configurable keyboard
  services.udev.packages = with pkgs; [ vial via ];
  
  # steam
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };

  # user
  users.users.bytomancer = {
    isNormalUser = true;
    description = "Bytomancer";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    packages = with pkgs; [
      alacritty
      zellij
      neovim
      vscodium
      vesktop
      git
      gnome.nautilus
      picom
      feh
      xwinwrap
      mpv
      obsidian
      arandr
      pavucontrol
      fastfetch
      htop
      tealdeer
      killall
      libgcc
      gcc_multi
      go
      python3
      rustup
      rustc
      kitty
      pkg-config
      xinput_calibrator
      gnome.gnome-font-viewer
      fio
      stow
      gscreenshot
      via
      cmus
      yt-dlp
      pipe-viewer
      v4l-utils
    ];
  };
}
