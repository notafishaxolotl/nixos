This is my first attempt using nixos so its not very good,
atleast im trying tho :D

here's a sandwich :P 🥪

MAKE SURE YOURE home/system.stateversion ALIGN WITH YOUR INSTALL BEFORE SWITCHING


run this to get spf command
```sh
bash -c "$(curl -sLo- https://superfile.dev/install.sh)"
```

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
yeah thats just incase your using the vm module with waydroidi

oh look more comands for extra ext4 inetrnal drives to work with steam...yay.

```sh
#sudo nixos-rebuild switch
#sudo umount /mnt/DoubleDisk 
sudo mount -a             
sudo chown -R acito:users /mnt/DoubleDisk
mkdir -p /mnt/DoubleDisk/SteamLibrary/steamapps
```
