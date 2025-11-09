{ pkgs, ... }:
{
    services.displayManager.sddm = {
        enable = true;
	autoNumlock = true;
        theme = "chili";
    };
    environment.systemPackages = with pkgs; [
      sddm-chili-theme
    ];
}
