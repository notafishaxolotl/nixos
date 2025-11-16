{ inputs, config, pkgs, ...}:

{

  programs.niri = {
    enable = true;
  };
  
  environment.systemPackages = with pkgs; [
    rofi
    mako
    imagemagick
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
    xwayland-satellite 
  ];

  services.xserver.enable = true;
  services.xserver.displayManager.startx.enable = true;
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

}
