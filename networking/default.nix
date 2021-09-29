{ config, lib, pkgs, ... }:

{
    # Basic network stuffs
    networking = {
        extraHosts = "10.0.0.119 azura.local";
        hostName = "ravenwatch";
        interfaces = {
            wlp0s20f3.useDHCP = true;
        };
    };

    # NetworkManager
    networking.networkmanager = {
        enable = true;
        wifi.powersave = false;
    };

    # Wall of fire
    networking.firewall = {
        enable = true;
        allowPing = true;
    };

    # SSH
    services.sshd.enable = true;
}

