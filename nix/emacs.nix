{ inputs, config, pkgs, ...}:

{
  
  programs.emacs = {
    enable =true;
  };

  environment.systemPackages = with pkgs; [
     

  ];

}