{ config, pkgs, ... }:
{
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
  };
  users.users.bytomancer = {
    isNormalUser = true;
    description = "Bytomancer";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      alacritty
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
      godot_4
      xinput_calibrator
      alsa-lib
      gnome.gnome-font-viewer
      fio
    ];
  };
}
