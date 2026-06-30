{ pkgs, ... }: {
  
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    nh                  # nix cli helper
    htop                # system monitoring tool
    firefox             # web browser
    nautilus            # file brower
    loupe               # image viewer
    gnome-text-editor   # text editor
    totem               # video player
    qalculate-gtk       # calculator
  ];

  fonts.packages = with pkgs; [
    corefonts           # Microsoft fonts
  ];

  programs.fish.enable = true;

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}
