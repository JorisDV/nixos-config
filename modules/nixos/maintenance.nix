{ pkgs, ... }:

let numberOfGenerations = 10;

in {

  boot.loader.systemd-boot.configurationLimit = numberOfGenerations;

  systemd.services.nh-clean = {
    description = "Clean old Nix generations with nh";

    path = [
      pkgs.nix
      pkgs.nh
    ];

    serviceConfig = {
      Type = "oneshot";
      ExecStart = "nh clean all --keep ${toString numberOfGenerations}";
    };
  };

  systemd.timers.nh-clean = {
    description = "Weekly nh-clean";

    wantedBy = [ "timers.target" ];

    timerConfig = {
      OnCalendar = "weekly";
      Persistent = true;
      Unit = "nh-clean.service";
    };
  };
  
  nix.optimise = {
    automatic = true;
    dates = [ "weekly" ];
  };
}
