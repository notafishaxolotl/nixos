This is my first attempt using nix so its not very good,
atleast im trying tho :D

yes this inclueds all the window managers i have ried since ive started nix so please be selective in what you install because of bloat
the enviroment modules are realy helpfull to know whats in each envrionment, its in Nix

I re used waybar for niri so that's why there's a hypr version in the waybar config 

here's a sandwich :P 🥪

MAKE SURE YOURE home/system.stateversion ARE THE SAME AS YOUR ORIGONAL BEFORE SWITCHING

https://home-manager.dev/

run this to get spf command
```sh
bash -c "$(curl -sLo- https://superfile.dev/install.sh)"
```

oh yeah to make the unstable module's usable, run:

```sh
nix-channel --add https://channels.nixos.org/nixos-unstable nixpkgs
# or, if you need sudo:
sudo nix-channel --add https://channels.nixos.org/nixos-unstable nixpkgs

nix-channel --update
sudo nixos-rebuild switch --upgrade
```

Use the command below to view pkg sources:

```sh
nix-channel --list | grep nixos
```
your gonna have to set the custom steam icons yourself, you can get more from https://www.steamgriddb.com/

oh look more comands for extra ext4 inetrnal drives to work with steam...yay.

```sh         
sudo chown -R acito:users /mnt/DoubleDisk
mkdir -p /mnt/DoubleDisk/SteamLibrary/steamapps
```
```sh
chmod +x ~/.config/Scripts/.fehbg
```