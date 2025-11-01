This is my first attempt using nixos so its not very good,
atleast im trying tho :D



here's a sandwich :P 🥪


oh yeah to make this work run
nix-channel --add https://channels.nixos.org/nixos-unstable nixpkgs
or
sudo nix-channel --add https://channels.nixos.org/nixos-unstable nixpkgs

and

nix-channel --update
sudo nixos-rebuild switch --upgrade

use the comand below to veiw pkg sorces
nix-channel --list | grep nixos
