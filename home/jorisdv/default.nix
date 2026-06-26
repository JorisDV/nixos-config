{ inputs, pkgs, ... }: {

  imports = [
    inputs.noctalia.homeModules.default

    ./git.nix
    ./fish.nix
    ./helix.nix
    ./alacritty.nix
    ./noctalia.nix
    ./niri.nix
  ];
  
  home.username = "jorisdv";
  home.homeDirectory = "/home/jorisdv";

  home.stateVersion = "26.05";
}
