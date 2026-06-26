{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  networking.hostName = "laptop";

  networking.networkmanager.enable = true;

  hardware.bluetooth.enable = true;

  time.timeZone = "Europe/Brussels";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "nl_BE.UTF-8";
    LC_IDENTIFICATION = "nl_BE.UTF-8";
    LC_MEASUREMENT = "nl_BE.UTF-8";
    LC_MONETARY = "nl_BE.UTF-8";
    LC_NAME = "nl_BE.UTF-8";
    LC_NUMERIC = "nl_BE.UTF-8";
    LC_PAPER = "nl_BE.UTF-8";
    LC_TELEPHONE = "nl_BE.UTF-8";
    LC_TIME = "nl_BE.UTF-8";
  };

  services.xserver.xkb = {
    layout = "be";
    variant = "";
  };

  console.keyMap = "be-latin1";

  users.users."jorisdv" = {
    shell = pkgs.fish;
    isNormalUser = true;
    description = "Joris De Vlieger";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  programs.fish = {
    enable = true;
  };

  programs.niri = {
    enable = true;
    useNautilus = true;
  };

  programs.dms-shell = {
    enable = true;
    systemd= {
      enable = true;
      restartIfChanged = true;
    };
  };

  services.displayManager.dms-greeter = {
    enable = true;
    compositor.name = "niri";
    configHome = "/home/jorisdv";
  };

  services.dbus.enable = true;
  security.polkit.enable = true;
  xdg.portal.enable = true;
  
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    helix
    git
    alacritty
    firefox
    fuzzel
    xwayland-satellite
    nautilus
  ];

  system.stateVersion = "26.05";
}
