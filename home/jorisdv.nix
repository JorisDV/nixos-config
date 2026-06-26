{ config, pkgs, inputs, ... }: {

  imports = [
    inputs.noctalia.homeModules.default
  ];

  home.username = "jorisdv";
  home.homeDirectory = "/home/jorisdv";

  home.stateVersion = "26.05";

  programs.noctalia = {
    enable = true;

    settings = {
      theme = {
        mode = "dark";
        source = "wallpaper";
      };

      wallpaper = {
        enabled = true;
        default.path = "~/wallpapers/wallpaper.png";
      };
    };
  };

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
