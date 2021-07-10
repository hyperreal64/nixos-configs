{ config, lib, pkgs, stdenv, ... }:

let
    defaultPkgs = with pkgs; [
        alacritty
        bat
        bat-extras.prettybat
        bat-extras.batman
        bat-extras.batgrep
        bat-extras.batdiff
        bat-extras.batwatch
        bitwarden-cli
        bottom
        bpytop
        cachix
        dconf2nix
        diff-so-fancy
        dracula-theme
        duf
        elinks
        exercism
        fd
        fzf
        gcc
        gnumake
        httpie
        hyperfine
        ibm-plex
        killall
        libnotify
        lsof
        neofetch
        nerdfonts
        ninja
        nix-direnv
        nushell
        onedrive
        rpi-imager
        powershell
        prettyping
        restic
        ripgrep
        s-tui
        shellcheck
        tldr
        tmux
        unzip
        urlview
        vscode
        wmutils-core
        wmutils-opt
        xclip
        zip
    ];

in

{
    programs.home-manager.enable = true;

    imports = [
        ./dconf/default.nix
        ./git/default.nix
        ./gnome/default.nix
        ./kitty/default.nix
        ./shell/default.nix
        ./ssh/default.nix
    ];

    nixpkgs.config.allowUnfree = true;

    home = {
        username = "jas";
        homeDirectory = "/home/jas";
        stateVersion = "21.05";

        packages = defaultPkgs;
    };

    programs = {
        neomutt.enable = true;
        gpg.enable = true;
        jq.enable = true;
    };

    xdg.userDirs = {
        enable = true;
        createDirectories = true;
        desktop = "\$HOME/desktop";
        documents = "\$HOME/documents";
        download = "\$HOME/downloads";
        pictures = "\$HOME/onedrive/Pictures";
        publicShare = "\$HOME/misc";
        music = "\$HOME/misc/music";
        templates = "\$HOME/misc/templates";
        videos = "\$HOME/misc/videos";
    };
}
