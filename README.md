# NixOS Config (personal)

Welcome — this is my personal NixOS configuration. It's a first attempt at using Nix and it probably contains a few rough edges, but it works for my setup. Use this as a reference, pick what you need, and avoid installing everything, it is very easy to get very bloated very quickly (I have too many pkgs).

---

## Quick notes & warnings

- This repo contains a lot of different configurations I've tried, so be selective when copying/enabling packages/modules — only enable what you actually want to use.
- Make sure your `home.stateVersion` / `system.stateVersion` match your system original's before switching configurations. Mismatched state versions may cause issues.
- Environment modules (in the repo) are useful, trust me — they show what each environment contains.

---

## Useful links

- Nixos Wiki (official): https://wiki.nixos.org/
- Nixos Wiki (unofficial): https://nixos.wiki/
- Home Manager: https://home-manager.dev/
- Superfile: https://superfile.dev/
- Steam grid icons: https://www.steamgriddb.com/

---

## Install helper (superfile)

Install the `spf` command with:

```sh
bash -c "$(curl -sLo- https://superfile.dev/install.sh)"
```

---

## Enable nixpkgs unstable (optional)

If you need packages from `nixos-unstable`, add the channel and update:

```sh
# As your user
nix-channel --add https://channels.nixos.org/nixos-unstable nixpkgs
# If required
sudo nix-channel --add https://channels.nixos.org/nixos-unstable nixpkgs
```
```sh
nix-channel --update
sudo nixos-rebuild switch --upgrade
```

To view configured channels:

```sh
nix-channel --list | grep nixos
```

---

## Steam / external drive notes

If you want store files on another internal drive wich is formatted to ext4, this commands help make i all just work:

```sh
sudo chown -R <your-username>:users /mnt/<your-mount-point>
```

And if you want Steam to recognize your drive for games.

```sh
mkdir -p /mnt/<your-mount-point>/SteamLibrary/steamapps
```

Make sure <your-mount-point> and the drive uuid match in 'drives.nix'.

Set custom Steam icons (SteamGridDB has many). Steam's configuration for custom icons is manual.

---

## Example small utilities

Make a script executable (example from my config):

```sh
chmod +x ~/.config/Scripts/.fehbg
```

---

## Why there's a Waybar hypr config

I reused my Waybar config for `niri`, so there's a `hypr` variant in Waybar — kept to avoid duplicating what already works for me.

---

## Final thoughts

- This is experimental and tailored to my hardware and preferences (AMD).
- Feel free to open issues or a PR if you want suggestions, fixes, or help adapting parts of this repo to your setup.
- And yes labwc is just openbox in wayland, I still love them both equally but niri is where my Heart is truly at.

Thanks for reading. Here's a sandwich for your troubles. 🥪