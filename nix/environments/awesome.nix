{ inputs, config, pkgs, ...}:

{

  services.xserver.windowManager.awesome.enable = true;
  services.picom = {
    enable =true;
  };

  environment.systemPackages = with pkgs; [
    dmenu
  ];

}
