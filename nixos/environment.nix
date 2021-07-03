# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, ... }:

{
    nixpkgs.config.allowUnfree = true;

    environment.shells = [ pkgs.bashInteractive pkgs.zsh ];

    environment.systemPackages = with pkgs; [
        firefox
        harfbuzzFull
        neovim
        nix-du
        nix-top
        nix-doc
        nix-tree
        nix-diff
        brave
        wget
        git
        system76-firmware
    ];

    nix.extraOptions = ''
        keep-outputs = true
        keep-derivations = true
    '';

    programs.dconf.enable = true;
}

