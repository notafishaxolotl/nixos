{ inputs, config, pkgs, ...}:

{
  
  programs.emacs = {
    enable =true;
    package = pkgs.emacs; 
  };

  environment.variables = {
    EDITOR = "emacs";
    VISUAL = "emacs";
  };

  environment.systemPackages = with pkgs; [
  ];

}