build:
	@if [ "$$EUID" -ne 0 ]; then \
		echo "Please run as root"; \
		exit 1;\
	fi
	nixos-rebuild -I nixos-config=cfg/configuration.nix switch