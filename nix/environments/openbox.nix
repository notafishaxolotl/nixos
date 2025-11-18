{ inputs, config, pkgs, ...}:

{

  services.xserver.windowManager.openbox.enable = true;
  services.picom = {
    enable =true;
  };

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
