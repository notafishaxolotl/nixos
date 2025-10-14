{ inputs, config, pkgs, ...}:

{

  programs.neovim = {
    enable =true;
  };
  environment.variables.EDITOR = "nvim";

  environment.systemPackages = with pkgs; [


  ];

}
