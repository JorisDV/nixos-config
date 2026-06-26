{ inputs, ... }: {

  imports = [
    ./hardware-configuration.nix

    ../../modules/nixos/boot.nix
    ../../modules/nixos/networking.nix
    ../../modules/nixos/users.nix
    ../../modules/nixos/desktop.nix
    ../../modules/nixos/noctalia-greeter.nix
    ../../modules/nixos/packages.nix
  ];

  networking.hostName = "laptop";

  system.stateVersion = "26.05";

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;

    extraSpecialArgs = {
      inherit inputs;
    };

    users.jorisdv = import ../../home/jorisdv;
  };
}
