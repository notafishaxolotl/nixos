{ inputs, config, pkgs, ...}:

{

  services.xserver.windowManager.labwc = {
    enable = true;
};

  environment.systemPackages = with pkgs; [

  ];
}
