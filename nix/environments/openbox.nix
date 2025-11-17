{ inputs, config, pkgs, ...}:

{

  services.xserver.windowManager.openbox.enable = true;
  services.picom = {
    enable =true;
  };

  environment.systemPackages = with pkgs; [
    dmenu
    ghostty
    paperview
    eww
    libnotify
    playerctl
  ];

}
