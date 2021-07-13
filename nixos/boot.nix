# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
    boot.loader = {
        efi = {
            canTouchEfiVariables = true;
            efiSysMountPoint = "/boot";
        };
        grub = {
            devices = [ "nodev" ];
            efiSupport = true;
            enable = true;
            useOSProber = true;
            version = 2;
        };
    };

    console.font =
        "${pkgs.terminus_font}/share/consolefonts/ter-u28n.psf.gz";
}
