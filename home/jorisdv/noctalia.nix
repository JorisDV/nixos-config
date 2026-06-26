{  
  programs.noctalia = {
    enable = true;

    settings = {
      theme = {
        mode = "dark";
        source = "wallpaper";

        templates = {
          enable_builtin_templates = true;
        };
      };

      wallpaper = {
        enabled = true;
        default.path = "${../../wallpaper.png}";
      };
    };
  };
}
