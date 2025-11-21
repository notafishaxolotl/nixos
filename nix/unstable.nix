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

  environment.systemPackages = with pkgs.unstable; [
      davinci-resolve
      xonotic
    ];
}
