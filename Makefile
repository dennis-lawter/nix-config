build: submodules confirmroot dotfiles nixbuild

nixbuild:
	nixos-rebuild -I nixos-config=cfg/configuration.nix switch

dotfiles: confirmroot
	rsync -av dotfiles/ /home/
	fc-cache

confirmroot:
	@if [ "$$EUID" -ne 0 ]; then \
		echo "Please run as root"; \
		exit 1;\
	fi

submodules:
	git submodule update --init --recursive
