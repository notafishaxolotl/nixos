# NixOS Configuration (personal)

Welcome — this is my personal NixOS configuration. It's a first attempt at using Nix and may contain some rough edges, but it works for my setup. Use it as a reference, pick what you need, and avoid installing everything (it's easy to get very bloated, i have too many pkgs).

---

## Quick notes & warnings

- This repo contains a lot of different configurations I've tried, so be selective when copying or enabling packages/modules — only enable what you actually want to use.
- Make sure your `home.stateVersion` / `system.stateVersion` match your system original's before switching configurations. Mismatched state versions may cause issues.
- Environment modules (in the repo) are useful, trust me — they show what each environment contains.

---

## Useful links

- Nixos Wiki: https://nixos.wiki/
- Home Manager: https://home-manager.dev/
- Steam grid icons: https://www.steamgriddb.com/
- Superfile: https://superfile.dev/

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

nix-channel --update
sudo nixos-rebuild switch --upgrade
```

To view configured channels:

```sh
nix-channel --list | grep nixos
```

---

## Steam / external drive notes

If you store Steam libraries on another internal drive, these example commands can help:

```sh
sudo chown -R <your-username>:users /mnt/DoubleDisk
mkdir -p /mnt/DoubleDisk/SteamLibrary/steamapps
```

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

- This is experimental and tailored to my hardware and preferences.
- Feel free to open issues or PRs if you want suggestions, fixes, or help adapting parts of this repo to your setup.

Here's a sandwich for you 🥪 — thanks for checking this out!
