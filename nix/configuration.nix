# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ inputs, config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./obs.nix
      ./vm.nix
      ./neovim.nix
      #./davinci.nix
      ./environments/hyprland.nix
      ./environments/awesome.nix
      ./environments/niri.nix
    ];

  #polkit
  security.polkit.enable = true;

  #kernal
  boot.kernelPackages = pkgs.linuxPackages_zen;
  boot.kernelModules = [ "kvm-amd" ];
  boot.kernelParams = [
    "quiet"
    "splash"
    "boot.shell_on_fail"
    "udev.log_priority=3"
    "rd.systemd.show_status=auto"
  ];

  #shell
  programs.zsh = {
    enable = true;

    #enableCompletions = true;
    #autosuggestions.enable = true;
    #syntaxHighlighting.enable = true;

    #shellAliases = {
    #  ll = "ls -l";
    #    update = "sudo nixos-rebuild switch";
    #};
    #history.size = 10001;
  };
  users.defaultUserShell = pkgs.zsh;

  # Bootloader.
  boot.loader.grub = {
    enable = true;
    efiSupport = true;
    device = "nodev"; # or specify the device if needed
    useOSProber = true; # for dual-booting
    theme = "/etc/nixos/Afro";
  };
  
  boot.loader.timeout = 7;

  boot.loader.efi.canTouchEfiVariables = true;

  boot.plymouth = {
    enable = true;
    theme = "cubes";
      themePackages = with pkgs; [
        # By default we would install all themes
        (adi1090x-plymouth-themes.override {
          selected_themes = [ "cubes" ];
        })
      ];
  };

  networking.hostName = "Nix"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/London";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_GB.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_GB.UTF-8";
    LC_IDENTIFICATION = "en_GB.UTF-8";
    LC_MEASUREMENT = "en_GB.UTF-8";
    LC_MONETARY = "en_GB.UTF-8";
    LC_NAME = "en_GB.UTF-8";
    LC_NUMERIC = "en_GB.UTF-8";
    LC_PAPER = "en_GB.UTF-8";
    LC_TELEPHONE = "en_GB.UTF-8";
    LC_TIME = "en_GB.UTF-8";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "gb";
    variant = "";
  };

  # Mount drives
  services.udisks2.enable = true;
  
  #configure flatpak
  services.flatpak.enable = true;
  
  #configure De and Dm
  services.xserver.enable = true;

  services.displayManager.ly = {
    enable = true; 
  };

  #configre graphics drivers
  hardware.graphics.enable = true;
  hardware.graphics.extraPackages = with pkgs;[
    amdvlk
    mesa.opencl
    rocmPackages.clr.icd
  ];
 

  # Configure console keymap
  console.keyMap = "uk";

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.acito = {
    isNormalUser = true;
    description = "Acito";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # experimental fetures
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
    "ca-derivations"
    "auto-allocate-uids"
  ];

  #steam
  programs.steam.enable = true;

  #bluetooth
  hardware.bluetooth.enable = true;
 
  # List packages installed in system profile
  environment.systemPackages = with pkgs; [
    git
    superfile
    wget
    fastfetch
    swww
    matugen
    easyeffects
    home-manager
    wdisplays 
    warehouse
    xfce.ristretto
    bluetui
    kdePackages.dolphin
    kdePackages.dolphin-plugins
  ];

  #environment.variables = {
  #  RUSTICL_ENABLE = "radeonsi";
  #};
  #hardware.graphics = {
  #  enable = true;
  #  extraPackages = with pkgs; [
  #    mesa.opencl # Enables Rusticl (OpenCL) support
  #  ];
  #};

  #hardware.graphics = {
  # enable = true;
  # extraPackages = with pkgs; [
  #   rocmPackages.clr.icd
  #   ];
  # };

  #extra fonts
  fonts.packages = with pkgs; [
      dina-font 
  ] ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts);

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "25.05"; # Did you read the comment? 
  #Yes

}
