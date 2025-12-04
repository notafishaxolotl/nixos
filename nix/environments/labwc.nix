{ inputs, config, pkgs, ...}:

{

  services.xserver.windowManager.labwc = {
    enable = true;
    xwayland.enable = true;
};

  environment.systemPackages = with pkgs; [
    wireplumber
    xwayland-satellite
    hyprpolkitagent
  ];
  
  services.xserver.enable = true;
  services.xserver.displayManager.startx.enable = true;
  services.dbus.enable = true;
  services.gnome.gnome-keyring.enable = true;
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

}
