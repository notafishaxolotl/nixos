{config, pkgs, ... }:

{
  programs.zsh = {
    autocd = true;
    autosuggestions = true

    enable = true;
    ohMyZsh = {
      enable = true;
    };
  };
  users.defaultUserShell = pkgs.zsh;

}