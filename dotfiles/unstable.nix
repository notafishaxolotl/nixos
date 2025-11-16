{ config, pkgs, pkgs-unstable, ... }:

{
  
  nixpkgs.config = {
    allowUnfree = true;
    packageOverrides = pkgs: {
      unstable = import <nixpkgs> {
        config = config.nixpkgs.config;
      };
    };
  };

  home.packages = with pkgs; [
    ryubing
  ];
  # Or, for a specific option:
  # programs.mpv.package = pkgs-unstable.mpv;
  
  # ... rest of your config
}
