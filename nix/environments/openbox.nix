{ inputs, config, pkgs, ...}:

{

  services.xserver.windowManager.openbox.enable = true;
  services.picom = {
    enable =true;
  };
  services.xserver.enable = true;
services.xserver.videoDrivers = [ "amdgpu" ]; # Ensure the amdgpu driver is specified

  services.xserver.deviceSection = ''
  Option "TearFree" "true"
'';
# Optional: ensure configuration is exported to /etc/X11/xorg.conf
  services.xserver.exportConfiguration = true;

  environment.systemPackages = with pkgs; [
    rofi
    dmenu
    ghostty
    paperview
    polybarFull
    eww
    libnotify
    playerctl
    openbox-menu
  ];

}
