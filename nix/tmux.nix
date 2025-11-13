{config, lib, pkgs, ... }:

{

  programs.tmux = {
    enable = true;
    clock24 = true;
    tmuxinator.enable = true
  };

}