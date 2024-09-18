{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    zsh
    gnumake
    blueman
    udisks
    udiskie
    gnome.gnome-disk-utility
    udevil
    gvfs
  ];
}
