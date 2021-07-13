{ config, lib, pkgs, stdenv, ... }:

let
    gnomePkgs = with pkgs.gnome; [
        dconf-editor
        eog
        evince
        gnome-tweak-tool
    ];

in

{
    home.packages = gnomePkgs;
}
