rebuild:
	nixos-rebuild switch --flake .# --use-remote-sudo

home:
	home-manager switch --flake .

rebuild.boot:
	sudo nixos-rebuild boot --flake .# --use-remote-sudo

pull:
	git pull

update: pull home rebuild

clear_garbage:
	nix-collect-garbage
