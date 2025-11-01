{ inputs, config, pkgs, ...}:

{

  programs.neovim = {
    enable = true;
    vimAlias = true;
    viAlias = true;
  };


  environment.variables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };

}
