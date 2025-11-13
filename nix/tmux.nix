{config, lib, pkgs, ... }:

{

  programs.tmux = {
    enable = true;
    clock24 = true;
    tmuxinator.enable = true;
    baseIndex = 1;
    mouse = true;
    focusEvents = false;
  };

}