{ inputs, config, pkgs, ...}:

{

  programs.neovim = {
    enable =true;
  };

  environment.variables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };

  environment.systemPackages = with pkgs; [
  neovim
  ];

}
