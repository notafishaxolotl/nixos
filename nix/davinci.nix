{ config, pkgs, pkgs-unstable, ... }:

{
  environment.systemPackages = with pkgs; [
    # Packages from your stable channel
  ] ++ (with pkgs-unstable; [
    # Packages from the unstable channel (e.g., a newer version of Helix)    
    davinci-resolve
  ]);
  
  # Or, for a specific option:
  # programs.mpv.package = pkgs-unstable.mpv;
  
  # ... rest of your config
}
