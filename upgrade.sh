if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

nixos-rebuild -I nixos-config=cfg/configuration.nix switch --upgrade
