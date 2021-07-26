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
        dns = "dnsmasq";
    };

    # Make /etc/resolv.conf immutable--otherwise DHCP overwrites it.
    environment.etc."resolv.conf" = with lib; with pkgs; {
        source = writeText "resolv.conf" ''
            ${concatStringsSep "\n" (map (ns: "nameserver ${ns}") config.networking.nameservers)}
            options edns0
        '';
    };

    # Wall of fire
    networking.firewall = {
        enable = true;
        allowPing = true;
        logRefusedPackets = true;
    };

    # dnsmasq
    services.dnsmasq = {
        enable = true;
        servers = [ "1.1.1.1" "1.0.0.1" "2606:4700:4700::1111" "2606:4700:4700::1001"];
        resolveLocalQueries = true;
        extraConfig = ''
            no-resolv
            local=/local/
            domain=local
            listen-address=127.0.0.1
            expand-hosts
            cache-size=150
        '';
    };

    # SSH
    services.sshd.enable = true;

    # Disable resolved
    services.resolved.enable = false;
}

