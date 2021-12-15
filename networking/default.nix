{ config, lib, pkgs, ... }:

{
    # Basic network stuffs
    networking = {
        hostName = "nocturnal";
        interfaces = {
            wlp3s0.useDHCP = true;
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
        allowedTCPPorts = [ 22 ];
    };

    # Mullvad VPN
    services.mullvad-vpn.enable = true;
    
    # SSH
    services.sshd.enable = true;
}

