{ inputs, config, pkgs, ...}:

{
  
  services.emacs = {
    enable =true;
  };

  environment.systemPackages = with pkgs; [
     

  ];

}