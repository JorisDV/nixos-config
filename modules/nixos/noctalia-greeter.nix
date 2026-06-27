{ pkgs, inputs, ... }: {
  
  programs.noctalia-greeter = {
    enable = true;

    package = inputs.noctalia-greeter.packages.${pkgs.stdenv.hostPlatform.system}.default;

    settings = {
      session.default = "niri";
      user.default = "jorisdv";

      keyboard.layout = "be";

      appearance.sheme = "Synced";
    };
  };
}
