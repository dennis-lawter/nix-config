{ config, pkgs, ... }:
{
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
      xwinwrap
      mpv
      obsidian
      arandr
      pavucontrol
      fastfetch
      htop
      tealdeer
      #smbnetfs
    ];
  };
}
