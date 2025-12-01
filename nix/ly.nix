{ config, pkgs, lib, ... }:

let
  unstablePkgs = import (builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/nixos-unstable.tar.gz";
  }) {
    inherit (pkgs) system;
    config = config.nixpkgs.config;
  };

  ly-unstable-overlay = final: prev: {
    ly = unstablePkgs.ly;
  };
in
{
  #nixpkgs.overlays = [ ly-unstable-overlay ];

  services.displayManager.ly = {
    enable = true;
    settings = {
#      animate = true;
#      animation = "cmatrix";
      bigclock = true;
      clock = "%a %b %d %H:%M:%S"; 
      hide_borders = true;
      tty = 2;
    };
  };
}
