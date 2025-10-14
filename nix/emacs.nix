{ inputs, config, pkgs, ...}:

{
  
  programs.emacs = {
    enable =true;
  };

  environment.variables = {
    EDITOR = "emacs";
    VISUAL = "emacs";
  };

  environment.systemPackages = with pkgs; [
     emacs

  ];

}