{ inputs, config, pkgs, ...}:

{

  programs.neovim = {
    enable =true;
  };

  environment.variables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };

  programs.vimPlugins = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
  neovim
  ];

}
