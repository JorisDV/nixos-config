{ pkgs, ... }: {
  
  users.users."jorisdv" = {
    shell = pkgs.fish;
    isNormalUser = true;
    description = "Joris De Vlieger";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  programs.fish.enable = true;
}
