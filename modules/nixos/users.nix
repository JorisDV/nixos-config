{ pkgs, ... }: {
  
  users.users."jorisdv" = {
    shell = pkgs.fish;
    isNormalUser = true;
    description = "Joris De Vlieger";
    extraGroups = [ "networkmanager" "wheel" "dialout" "pico" ];
  };

  users.groups.pico = {};

  services.udev.extraRules = ''
    # Raspberry Pi RP2040 / RP2350 BOOTSEL / picotool access
    SUBSYSTEM=="usb", ATTRS{idVendor}=="2e8a", ATTRS{idProduct}=="0003", MODE="0660", GROUP="pico", TAG+="uaccess"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="2e8a", ATTRS{idProduct}=="0009", MODE="0660", GROUP="pico", TAG+="uaccess"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="2e8a", ATTRS{idProduct}=="000a", MODE="0660", GROUP="pico", TAG+="uaccess"
    SUBSYSTEM=="usb", ATTRS{idVendor}=="2e8a", ATTRS{idProduct}=="000f", MODE="0660", GROUP="pico", TAG+="uaccess"
  '';
}
