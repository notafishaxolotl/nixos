# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ inputs, config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  #polkit
  security.polkit.enable = true;

  #kernal
  boot.kernelPackages = pkgs.linuxPackages_zen;
  boot.kernelModules = [ "kvm-amd" ];

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
  };
   boot.loader.efi.canTouchEfiVariables = true;

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
  services.displayManager.sddm.enable = true;
  programs.hyprland.enable = true;
  
  #configre graphics drivers
  hardware.graphics.enable = true;
  hardware.graphics.extraPackages = with pkgs;[
    amdvlk 
  ];
 

  # Configure console keymap
  console.keyMap = "uk";

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.acito = {
    isNormalUser = true;
    description = "Acito";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" ];
    packages = with pkgs; [
      git
    ];
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

  #vm
  virtualisation = {
    libvirtd = {
      enable = true; 
      #qemuGuest.enable = true;
    };
    # Set this to true for better copy/paste and dynamic resolution
    #spice-vdagentd.enable = true;
  };
  programs.virt-manager.enable = true;

  # List packages installed in system profile
  environment.systemPackages = with pkgs; [
    superfile
    kitty
    neovim
    wget
    fastfetch
    matugen
    fuzzel
    eww
    waybar
    waypaper 
    nwg-look
    plymouth
    swww
    waypaper
    nwg-dock-hyprland
    matugen
    easyeffects
    nwg-drawer
    playerctl
    spicetify-cli
    kdePackages.dolphin
    kdePackages.dolphin-plugins
    blender
    home-manager
    wdisplays
    wget
    vivaldi
    warehouse
    swaynotificationcenter
    hyprpolkitagent
    nwg-look
    sl
    btop-rocm
    rpcs3
    pcsx2
    duckstation
    scrcpy
    krita
    xfce.ristretto
    python3Full
    android-tools
    neo-cowsay
    ];

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
