{ pkgs, ... }: {

  home.packages = with pkgs; [
    clang
    clang-tools
    cmake
    ninja
    lldb
    pkg-config
    stremio-linux-shell
  ];
}
