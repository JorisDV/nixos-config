{ config, pkgs, inputs, ... }: {

  home.username = "jorisdv";
  home.homeDirectory = "/home/jorisdv";

  home.stateVersion = "26.05";

  programs.git = {
    enable = true;

    settings = {
      user.name = "Joris De Vlieger";
      user.email = "JorisDV@mail.com";
      init.defaultBranch = "main";
      core.editor = "hx";
    };
  };

  programs.fish = {
    enable = true;
  };

  programs.helix = {
    enable = true;
    defaultEditor = true;
  };

  programs.alacritty.enable = true;

  home.packages = with pkgs; [
    ripgrep
    fd
    unzip
  ];
}
