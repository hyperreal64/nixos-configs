# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, ... }:

{
    nixpkgs.config.allowUnfree = true;

    environment.shells = [ pkgs.bashInteractive pkgs.zsh ];

    nixpkgs.overlays = [
        (import (let
            #rev = "master";
            rev = "2aff1c00dc619b5b8af3dee95461b41f3a6fd7f0";
          in
          builtins.fetchTarball {
              url = "https://github.com/nix-community/neovim-nightly-overlay/archive/${rev}.tar.gz";
          })
        )
    ];

    environment.systemPackages = with pkgs; [
        firefox
        harfbuzzFull
        mmc-utils
        neovim-nightly
        nix-du
        nix-top
        nix-doc
        nix-tree
        nix-diff
        nodejs
        brave
        wget
        tree-sitter
        git
        system76-firmware
        gopls
        rnix-lsp
        zsh-nix-shell
        nodePackages.bash-language-server
        nodePackages.dockerfile-language-server-nodejs
        nodePackages.pyright
        nodePackages.vscode-json-languageserver-bin
        nodePackages.yaml-language-server
    ];

    nix.extraOptions = ''
        keep-outputs = true
        keep-derivations = true
    '';

    programs.dconf.enable = true;
}

