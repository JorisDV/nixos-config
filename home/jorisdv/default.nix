{ inputs, pkgs, ... }: {

  imports = [
    inputs.noctalia.homeModules.default

    ./packages.nix
    ./git.nix
    ./alacritty.nix
    ./helix.nix
    ./noctalia.nix
    ./niri.nix
  ];
  
  home.username = "jorisdv";
  home.homeDirectory = "/home/jorisdv";

  home.stateVersion = "26.05";
}
