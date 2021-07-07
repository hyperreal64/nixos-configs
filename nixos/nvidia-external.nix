{ pkgs, ... }:

{
    services.xserver.videoDrivers = [ "nvidia" ];
    hardware.nvidia = {
        prime.intelBusId = "PCI:0:2:0";
        prime.nvidiaBusId = "PCI:1:0:0";
        prime.sync.enable = true;
        modesetting.enable = true;
    };
}
