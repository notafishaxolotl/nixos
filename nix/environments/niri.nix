{ inputs, config, pkgs, ...}:

{

  programs.niri.enable = true;
  
  environment.systemPackages = with pkgs; [
    mako
    imagemagick
    kitty
    fuzzel
    matugen
    waypaper
    waybar
    eww
    hyprpolkitagent
    btop-rocm
    playerctl
    nwg-drawer
    nwg-dock
    nwg-look
    swaynotificationcenter
    wireplumber
  ];

}
