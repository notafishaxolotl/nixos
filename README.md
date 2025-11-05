This is my first attempt using nixos so its not very good,
atleast im trying tho :D

here's a sandwich :P 🥪

oh yeah to make the unstable pkgs module usable, run:

```sh
nix-channel --add https://channels.nixos.org/nixos-unstable nixpkgs
# or, if you need sudo:
sudo nix-channel --add https://channels.nixos.org/nixos-unstable nixpkgs
```

and

```sh
nix-channel --update
sudo nixos-rebuild switch --upgrade
```

Use the command below to view pkg sources:

```sh
nix-channel --list | grep nixos
```
your gonna have to set the custom steam icons yourself, you can get them from https://www.steamgriddb.com/


```sh
sudo waydroid init -s GAPPS
sudo waydroid init
```

oh this?
yeah thats just incase your using the vm module with waydroid
