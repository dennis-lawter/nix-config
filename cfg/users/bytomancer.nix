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
            blueman
            git
            gnumake
        ];
    };
}
