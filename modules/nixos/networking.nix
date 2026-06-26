{
  networking.hostName = "laptop";

  networking.networkmanager.enable = true;

  hardware.bluetooth.enable = true;

  services.upower.enable = true;
  services.power-profiles-daemon.enable = true;
}
