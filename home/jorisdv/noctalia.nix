{  
  programs.noctalia = {
    enable = true;

    settings = {
      theme = {
        mode = "dark";
        source = "wallpaper";
        wallpaper_sheme = "vibrant";

        templates = {
          enable_builtin_templates = true;
        };
      };

      wallpaper = {
        enabled = true;
        default.path = "${../../wallpaper.png}";
      };
      
      bar.default = {
        start = [ "workspaces" ];
        center = [ "date" "clock" "weather" ];
        end = [ "notifications"
                "group:network_speeds"
                "group:system_info"
                "battery"
                "session"
              ];

        capsule = true;

        capsule_group = [
          {
            id = "network_speeds";
            members = [ "cpu" "ram" ];
            fill = "surface_variant";
            opacity = 1.0;
            padding = 6.0;
          }

          {
            id = "system_info";
            members = [ "network_rx" "network_tx" ];
            opacity = 1.0;
            padding = 6.0;
          }
        ];

        dead_zone.command = "noctalia msg panel-toggle control-center";
       
        margin_ends = 10;
        widget_spacing = 12;
      };
      
      widget.weather.show_condition = false;
      widget.cpu.display = "text";
      widget.ram.display = "text";
      widget.network_rx.display = "text";
      widget.network_tx.display = "text";

      control_center.shortcuts = [
        { type = "wifi"; }
        { type = "bluetooth"; }
        { type = "nightlight" ;}
        { type = "notification"; }
        { type = "power_profile"; }
        { type = "dark_mode"; }
      ];

      location.auto_locate = true;

      battery.warning_treshold = 20;

      nightlight.enabled = true;

      shell = {
        launcher = {
          app_grid = true;
          categories = false;
        };

        panel = {
          clipboard_placement = "attached";
          launcher_placement = "attached";
        };
      };
    };
  };
}
