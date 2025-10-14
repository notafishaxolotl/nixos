{ inputs, config, pkgs, ...}:

{

  programs.neovim = {
    enable =true;
  };

  environment.systemPackages = with pkgs; [


  ];

}
