# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, ... }:

{
    nixpkgs.config.allowUnfree = true;

    environment.shells = [ pkgs.bashInteractive pkgs.zsh ];

    environment.systemPackages = with pkgs; [
        firefox
        git
        gnupg
        gopls
        ldns
        mmc-utils
        mullvad-vpn
        neovim
        nix-diff
        nix-doc
        nix-du
        nix-top
        nix-tree
        nodePackages.bash-language-server
        nodePackages.dockerfile-language-server-nodejs
        nodePackages.pyright
        nodePackages.vscode-json-languageserver-bin
        nodePackages.yaml-language-server
        rnix-lsp
        wget
        zsh-nix-shell
    ];

    nix.extraOptions = ''
        keep-outputs = true
        keep-derivations = true
    '';

    # GnuPG Agent
    programs.gnupg = {
        agent.enable = true;
        agent.pinentryFlavor = "gnome3";
        dirmngr.enable = true;
    };

    # Enable Zsh
    programs.zsh.enable = true;

    # Flatpak
    services.flatpak.enable = true;
    xdg.portal.enable = true;
}

