{ pkgs, ... }: {
  
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    nh                  # nix cli helper
    firefox             # web browser
    nautilus            # file brower
    loupe               # image viewer
    gnome-text-editor   # text editor
    totem               # video player
    qalculate-gtk       # calculator
  ];
}
