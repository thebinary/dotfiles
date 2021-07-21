{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.packages = with pkgs; [ 
    # Shell Add-ons
    tmux
    tmux-xpanes
    fzf
    fd
    ag
    bat
    jq
    asciinema
    figlet
    neofetch
    pfetch
    ncurses
    ripgrep
  
    # GNU
    bash
    coreutils

    # Reverse Utils
    mitmproxy
    binwalk

    # Utils
    axel
    gnupg
    ffmpeg
    youtube-dl
    bitwarden-cli

    # Essentials
    git
    vagrant

    # Prog Languages
    go
    # clisp 2.49 marked broken
    # clisp
    sbcl
    ghc
    nodejs
  
    # Prog Add-Ons
    protobuf

    # Automation Tools
    ansible
    terraform

    # DevOps
    heroku
    minikube
    kubectl
  
    # Networking Utils
    nmap
    tor

    # MacOS Tools
    skhd
    yabai

    # database
    postgresql
  ];

  programs.bat = {
    enable = true;
    config = {
      theme = "ansi-dark";
    };
  };

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "abhishek";
  home.homeDirectory = "/Users/abhishek";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.03";
} 
