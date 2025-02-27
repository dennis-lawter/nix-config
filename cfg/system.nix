{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    zsh
    blueman
    udisks
    udiskie
    gnome.gnome-disk-utility
    udevil
    gvfs
    rofi
  ];
}
