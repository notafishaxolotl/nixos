{config, pkgs, ... }:

{
  programs.zsh = {
    autocd = true;

    autosuggestions = {
      enable = true;
      highlight = true;
      srategy = [ "history" ];
    }

    enable = true;
    ohMyZsh = {
      enable = true;
    };
  };
  users.defaultUserShell = pkgs.zsh;

}