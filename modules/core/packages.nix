{pkgs, ...}: {
  programs = {
    firefox.enable = false; # Firefox is not installed by default
    dconf.enable = true;
    seahorse.enable = true;
    fuse.userAllowOther = true;
    virt-manager.enable = true;
    mtr.enable = true;
    adb.enable = true;

    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };

    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
      ];
    };
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    appimage-run
    brightnessctl
    cmatrix
    cowsay
    docker-compose
    duf
    eza
    ffmpeg
    file-roller
    fzf
    gedit
    gimp
    greetd.tuigreet
    htop
    hyprpicker
    imv
    inxi
    killall
    krabby
    libnotify
    libvirt
    lm_sensors
    lolcat
    lshw
    lxqt.lxqt-policykit
    meson
    mpv
    mullvad-vpn
    ncdu
    ninja
    nixfmt-rfc-style
    pavucontrol
    pciutils
    picard
    pipes-rs
    pkg-config
    playerctl
    qbittorrent-enhanced
    quickemu
    retroarch-free
    ripgrep
    socat
    unrar
    unzip
    usbutils
    v4l-utils
    virt-viewer
    wget
    ytmdl
  ];
}
