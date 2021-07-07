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
        htop
        httpie
        hyperfine
        ibm-plex
        jq
        killall
        libnotify
        lsd
        lsof
        neofetch
        neomutt
        nerdfonts
        ninja
        nix-direnv
        nushell
        onedrive
        pass
        pinentry
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

    gnomePkgs = with pkgs.gnome; [
        dconf-editor
        eog
        evince
        gnome-tweak-tool
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

        packages = defaultPkgs ++ gnomePkgs;
    };

    programs = {
        direnv.enable = true;
        direnv.nix-direnv.enable = true;
    };

    programs.gpg = {
        enable = true;
        settings = {
            no-emit-version = true;
            no-comments = true;
            display-charset = "utf-8";
            keyid-format = "0xlong";
            with-fingerprint = true;
            list-options = "show-uid-validity";
            verify-options = "show-uid-validity";
            cert-digest-algo = "SHA512";
            fixed-list-mode = true;
            no-symkey-cache = true;
            personal-cipher-preferences = [ "AES256" "AES192" "AES" ];
            personal-compress-preferences = [ "ZLIB" "BZIP2" "ZIP" "Uncompressed" ];
            personal-digest-preferences = [ "SHA512" "SHA384" "SHA256" ];
            require-cross-certification = true;
            s2k-cipher-algo = "AES256";
            s2k-digest-algo = "SHA512";
            use-agent = true;
        };
    };

    services.gpg-agent = {
        enable = true;
        enableSshSupport = true;
        defaultCacheTtlSsh = 60480000;
        maxCacheTtl = 60480000;
        pinentryFlavor = "curses";
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
