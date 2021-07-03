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
        lsd
        lsof
        neofetch
        neovim
        # neovim-nightly
        nerdfonts
        ninja
        nix-direnv
        nordic
        onedrive
        rpi-imager
        prettyping
        restic
        ripgrep
        rnix-lsp
        s-tui
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

    gnomePkgs = with pkgs.gnome; [
        dconf-editor
        eog
        evince
        gnome-tweak-tool
    ];

    nodePkgs = with pkgs.nodePackages; [
        bash-language-server
        dockerfile-language-server-nodejs
        pyright
        vscode-json-languageserver-bin
        yaml-language-server
    ];

in

{
    programs.home-manager.enable = true;

    imports = [
        ./dconf/default.nix
        ./git/default.nix
    ];

    nixpkgs.config.allowUnfree = true;

    home = {
        username = "jas";
        homeDirectory = "/home/jas";
        stateVersion = "21.05";

        packages = defaultPkgs ++ gnomePkgs ++ nodePkgs;
    };

    programs = {
        neomutt.enable = true;
        gpg.enable = true;
        htop.enable = true;
        jq.enable = true;
        ssh.enable = true;
        direnv.enable = true;
        direnv.nix-direnv.enable = true;
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
