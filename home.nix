{ config, pkgs, ... }:

{
  home.username = "kz";
  home.homeDirectory = "/home/kz";
  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    neofetch
    nnn
    curl

    zip
    xz
    unzip
    p7zip

    ripgrep
    jq
    yq-go

    mtr
    iperf3
    dnsutils
    ldns
    aria2
    socat
    nmap
    ipcalc

    cowsay
    file
    which
    tree
    gnused
    gnutar
    gawk
    zstd
    gnupg

    nix-output-monitor

    btop
    iotop
    iftop

    strace
    ltrace
    lsof

    sysstat
    lm_sensors
    ethtool
    pciutils
    usbutils

    fzf
    grc

    zed-editor
    bruno
    nodejs_23
    deno
    bun
    go
    neovim
    helix
  ];

  #home.file = { };

  home.sessionVariables = {
    EDITOR = "vim";
    SHELL = "${pkgs.fish}/bin/fish";
  };

  home.pointerCursor = {
    name = "Vanilla-DMZ";
    package = pkgs.vanilla-dmz;
    size = 12;
  };

  programs.git = {
    enable = true;
    userName = "kayYZ1";
    userEmail = "overek7133@gmail.com";
  };

  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting "Hello there!"
    '';
    plugins = [
      { name = "grc"; src = pkgs.fishPlugins.grc.src; }
      { name = "done"; src = pkgs.fishPlugins.done.src; }
      { name = "fzf-fish"; src = pkgs.fishPlugins.fzf-fish.src; }
      { name = "forgit"; src = pkgs.fishPlugins.forgit.src; }
      { name = "hydro"; src = pkgs.fishPlugins.hydro.src; }
      { name = "tide"; src = pkgs.fishPlugins.tide.src; }
    ];
  };

  programs.home-manager.enable = true;
}
