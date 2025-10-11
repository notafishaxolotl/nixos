{ inputs, config, pkgs, ...}:

{

  programs.hyprland.enable = true;
  
  environment.systemPackages = with pkgs; [
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
    nwg-dock-hyprland
    nwg-look
    swaynotificationcenter
  ];

}
