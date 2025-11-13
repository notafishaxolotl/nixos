{config, lib, pkgs, ... }:

{

  programs.tmux = {
    enable = true;
    shell = "${pkgs.bash}/bin/zsh";

    clock24 = true;
    keyMode = "vi";
    baseIndex = 1;
    mouse = true;
    focusEvents = false;
    newSession = true;
    secureSocket = false;
    disableConfirmationPrompt = false;
    historyLimit = 5000;
    escapeTime = 0;

    plugins = with pkgs; [
      tmuxPlugins.better-mouse-mode
    ];

    programs.tmate = {
      enable = true;
      # FIXME: This causes tmate to hang.
      # extraConfig = config.xdg.configFile."tmux/tmux.conf".text;
    };
    tmuxinator = {
      enable = true;
    };

  };

}